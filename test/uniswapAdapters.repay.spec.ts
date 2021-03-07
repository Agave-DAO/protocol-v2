import { makeSuite, TestEnv } from './helpers/make-suite';
import {
  convertToCurrencyDecimals,
  getContract,
  buildPermitParams,
  getSignatureFromTypedData,
  buildRepayAdapterParams,
} from '../helpers/contracts-helpers';
import { getMockUniswapRouter } from '../helpers/contracts-getters';
import { deployUniswapRepayAdapter } from '../helpers/contracts-deployments';
import { MockUniswapV2Router02 } from '../types/MockUniswapV2Router02';
import { Zero } from '@ethersproject/constants';
import BigNumber from 'bignumber.js';
import { DRE, evmRevert, evmSnapshot } from '../helpers/misc-utils';
import { ethers } from 'ethers';
import { eContractid } from '../helpers/types';
import { StableDebtToken } from '../types/StableDebtToken';
import { BUIDLEREVM_CHAINID } from '../helpers/buidler-constants';
import { MAX_UINT_AMOUNT } from '../helpers/constants';
import { VariableDebtToken } from '../types';
const { parseEther } = ethers.utils;

const { expect } = require('chai');

makeSuite('Uniswap adapters', (testEnv: TestEnv) => {
  let mockUniswapRouter: MockUniswapV2Router02;
  let evmSnapshotId: string;

  before(async () => {
    mockUniswapRouter = await getMockUniswapRouter();
  });

  beforeEach(async () => {
    evmSnapshotId = await evmSnapshot();
  });

  afterEach(async () => {
    await evmRevert(evmSnapshotId);
  });

  describe('UniswapRepayAdapter', () => {
    beforeEach(async () => {
      const { users, weth, wnative, usdc, aave, pool, deployer } = testEnv;
      const userAddress = users[0].address;

      // Provide liquidity
      await wnative.mint(parseEther('20000'));
      await wnative.approve(pool.address, parseEther('20000'));
      await pool.deposit(wnative.address, parseEther('20000'), deployer.address, 0);

      const usdcLiquidity = await convertToCurrencyDecimals(usdc.address, '2000000');
      await usdc.mint(usdcLiquidity);
      await usdc.approve(pool.address, usdcLiquidity);
      await pool.deposit(usdc.address, usdcLiquidity, deployer.address, 0);

      await weth.mint(parseEther('100'));
      await weth.approve(pool.address, parseEther('100'));
      await pool.deposit(weth.address, parseEther('100'), deployer.address, 0);

      await aave.mint(parseEther('1000000'));
      await aave.approve(pool.address, parseEther('1000000'));
      await pool.deposit(aave.address, parseEther('1000000'), deployer.address, 0);

      // Make a deposit for user
      await weth.mint(parseEther('1000'));
      await weth.approve(pool.address, parseEther('1000'));
      await pool.deposit(weth.address, parseEther('1000'), userAddress, 0);

      await aave.mint(parseEther('1000000'));
      await aave.approve(pool.address, parseEther('1000000'));
      await pool.deposit(aave.address, parseEther('1000000'), userAddress, 0);

      await usdc.mint(usdcLiquidity);
      await usdc.approve(pool.address, usdcLiquidity);
      await pool.deposit(usdc.address, usdcLiquidity, userAddress, 0);
    });

    describe('constructor', () => {
      it('should deploy with correct parameters', async () => {
        const { addressesProvider, wnative } = testEnv;
        await deployUniswapRepayAdapter([
          addressesProvider.address,
          mockUniswapRouter.address,
          wnative.address,
        ]);
      });

      it('should revert if not valid addresses provider', async () => {
        const { wnative } = testEnv;
        expect(
          deployUniswapRepayAdapter([
            mockUniswapRouter.address,
            mockUniswapRouter.address,
            wnative.address,
          ])
        ).to.be.reverted;
      });
    });

    describe('executeOperation', () => {
      it('should correctly swap tokens and repay debt', async () => {
        const {
          users,
          pool,
          wnative,
          aUSDC,
          oracle,
          usdc,
          uniswapRepayAdapter,
          helpersContract,
        } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const daiStableDebtTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).stableDebtTokenAddress;

        const daiStableDebtContract = await getContract<StableDebtToken>(
          eContractid.StableDebtToken,
          daiStableDebtTokenAddress
        );

        const userDaiStableDebtAmountBefore = await daiStableDebtContract.balanceOf(userAddress);

        const liquidityToSwap = amountWETHtoSwap;
        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);
        const userAEthBalanceBefore = await aUSDC.balanceOf(userAddress);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, liquidityToSwap);

        const flashLoanDebt = new BigNumber(expectedDaiAmount.toString())
          .multipliedBy(1.0009)
          .toFixed(0);

        await mockUniswapRouter.setAmountIn(
          flashLoanDebt,
          wnative.address,
          usdc.address,
          liquidityToSwap
        );

        const params = buildRepayAdapterParams(
          wnative.address,
          liquidityToSwap,
          1,
          0,
          0,
          0,
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          false
        );

        await expect(
          pool
            .connect(user)
            .flashLoan(
              uniswapRepayAdapter.address,
              [usdc.address],
              [expectedDaiAmount.toString()],
              [0],
              userAddress,
              params,
              0
            )
        )
          .to.emit(uniswapRepayAdapter, 'Swapped')
          .withArgs(wnative.address, usdc.address, liquidityToSwap.toString(), flashLoanDebt);

        const adapterWethBalance = await wnative.balanceOf(uniswapRepayAdapter.address);
        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiStableDebtAmount = await daiStableDebtContract.balanceOf(userAddress);
        const userAEthBalance = await aUSDC.balanceOf(userAddress);

        expect(adapterWethBalance).to.be.eq(Zero);
        expect(adapterDaiBalance).to.be.eq(Zero);
        expect(userDaiStableDebtAmountBefore).to.be.gte(expectedDaiAmount);
        expect(userDaiStableDebtAmount).to.be.lt(expectedDaiAmount);
        expect(userAEthBalance).to.be.lt(userAEthBalanceBefore);
        expect(userAEthBalance).to.be.gte(userAEthBalanceBefore.sub(liquidityToSwap));
      });

      it('should correctly swap tokens and repay debt with permit', async () => {
        const {
          users,
          pool,
          wnative,
          aUSDC,
          oracle,
          usdc,
          uniswapRepayAdapter,
          helpersContract,
        } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const daiStableDebtTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).stableDebtTokenAddress;

        const daiStableDebtContract = await getContract<StableDebtToken>(
          eContractid.StableDebtToken,
          daiStableDebtTokenAddress
        );

        const userDaiStableDebtAmountBefore = await daiStableDebtContract.balanceOf(userAddress);

        const liquidityToSwap = amountWETHtoSwap;
        const userAEthBalanceBefore = await aUSDC.balanceOf(userAddress);

        const chainId = DRE.network.config.chainId || BUIDLEREVM_CHAINID;
        const deadline = MAX_UINT_AMOUNT;
        const nonce = (await aUSDC._nonces(userAddress)).toNumber();
        const msgParams = buildPermitParams(
          chainId,
          aUSDC.address,
          '1',
          await aUSDC.name(),
          userAddress,
          uniswapRepayAdapter.address,
          nonce,
          deadline,
          liquidityToSwap.toString()
        );

        const ownerPrivateKey = require('../test-wallets.js').accounts[1].secretKey;
        if (!ownerPrivateKey) {
          throw new Error('INVALID_OWNER_PK');
        }

        const { v, r, s } = getSignatureFromTypedData(ownerPrivateKey, msgParams);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, liquidityToSwap);

        const flashLoanDebt = new BigNumber(expectedDaiAmount.toString())
          .multipliedBy(1.0009)
          .toFixed(0);

        await mockUniswapRouter.setAmountIn(
          flashLoanDebt,
          wnative.address,
          usdc.address,
          liquidityToSwap
        );

        const params = buildRepayAdapterParams(
          wnative.address,
          liquidityToSwap,
          1,
          liquidityToSwap,
          deadline,
          v,
          r,
          s,
          false
        );

        await expect(
          pool
            .connect(user)
            .flashLoan(
              uniswapRepayAdapter.address,
              [usdc.address],
              [expectedDaiAmount.toString()],
              [0],
              userAddress,
              params,
              0
            )
        )
          .to.emit(uniswapRepayAdapter, 'Swapped')
          .withArgs(wnative.address, usdc.address, liquidityToSwap.toString(), flashLoanDebt);

        const adapterWethBalance = await wnative.balanceOf(uniswapRepayAdapter.address);
        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiStableDebtAmount = await daiStableDebtContract.balanceOf(userAddress);
        const userAEthBalance = await aUSDC.balanceOf(userAddress);

        expect(adapterWethBalance).to.be.eq(Zero);
        expect(adapterDaiBalance).to.be.eq(Zero);
        expect(userDaiStableDebtAmountBefore).to.be.gte(expectedDaiAmount);
        expect(userDaiStableDebtAmount).to.be.lt(expectedDaiAmount);
        expect(userAEthBalance).to.be.lt(userAEthBalanceBefore);
        expect(userAEthBalance).to.be.gte(userAEthBalanceBefore.sub(liquidityToSwap));
      });

      it('should revert if caller not lending pool', async () => {
        const { users, pool, wnative, aUSDC, oracle, usdc, uniswapRepayAdapter } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const liquidityToSwap = amountWETHtoSwap;
        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, liquidityToSwap);

        const params = buildRepayAdapterParams(
          wnative.address,
          liquidityToSwap,
          1,
          0,
          0,
          0,
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          false
        );

        await expect(
          uniswapRepayAdapter
            .connect(user)
            .executeOperation(
              [usdc.address],
              [expectedDaiAmount.toString()],
              [0],
              userAddress,
              params
            )
        ).to.be.revertedWith('CALLER_MUST_BE_LENDING_POOL');
      });

      it('should revert if there is not debt to repay with the specified rate mode', async () => {
        const { users, pool, wnative, oracle, usdc, uniswapRepayAdapter, aUSDC } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        await wnative.connect(user).mint(amountWETHtoSwap);
        await wnative.connect(user).transfer(uniswapRepayAdapter.address, amountWETHtoSwap);

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 2, 0, userAddress);

        const liquidityToSwap = amountWETHtoSwap;
        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, liquidityToSwap);

        const params = buildRepayAdapterParams(
          wnative.address,
          liquidityToSwap,
          1,
          0,
          0,
          0,
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          false
        );

        await expect(
          pool
            .connect(user)
            .flashLoan(
              uniswapRepayAdapter.address,
              [usdc.address],
              [expectedDaiAmount.toString()],
              [0],
              userAddress,
              params,
              0
            )
        ).to.be.reverted;
      });

      it('should revert if there is not debt to repay', async () => {
        const { users, pool, wnative, oracle, usdc, uniswapRepayAdapter, aUSDC } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        await wnative.connect(user).mint(amountWETHtoSwap);
        await wnative.connect(user).transfer(uniswapRepayAdapter.address, amountWETHtoSwap);

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        const liquidityToSwap = amountWETHtoSwap;
        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, liquidityToSwap);

        const params = buildRepayAdapterParams(
          wnative.address,
          liquidityToSwap,
          1,
          0,
          0,
          0,
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          false
        );

        await expect(
          pool
            .connect(user)
            .flashLoan(
              uniswapRepayAdapter.address,
              [usdc.address],
              [expectedDaiAmount.toString()],
              [0],
              userAddress,
              params,
              0
            )
        ).to.be.reverted;
      });

      it('should revert when max amount allowed to swap is bigger than max slippage', async () => {
        const { users, pool, wnative, oracle, usdc, aUSDC, uniswapRepayAdapter } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const bigMaxAmountToSwap = amountWETHtoSwap.mul(2);
        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, bigMaxAmountToSwap);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, bigMaxAmountToSwap);

        const flashLoanDebt = new BigNumber(expectedDaiAmount.toString())
          .multipliedBy(1.0009)
          .toFixed(0);

        await mockUniswapRouter.setAmountIn(
          flashLoanDebt,
          wnative.address,
          usdc.address,
          bigMaxAmountToSwap
        );

        const params = buildRepayAdapterParams(
          wnative.address,
          bigMaxAmountToSwap,
          1,
          0,
          0,
          0,
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          false
        );

        await expect(
          pool
            .connect(user)
            .flashLoan(
              uniswapRepayAdapter.address,
              [usdc.address],
              [expectedDaiAmount.toString()],
              [0],
              userAddress,
              params,
              0
            )
        ).to.be.revertedWith('maxAmountToSwap exceed max slippage');
      });

      it('should swap, repay debt and pull the needed ATokens leaving no leftovers', async () => {
        const {
          users,
          pool,
          wnative,
          aUSDC,
          oracle,
          usdc,
          uniswapRepayAdapter,
          helpersContract,
        } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const daiStableDebtTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).stableDebtTokenAddress;

        const daiStableDebtContract = await getContract<StableDebtToken>(
          eContractid.StableDebtToken,
          daiStableDebtTokenAddress
        );

        const userDaiStableDebtAmountBefore = await daiStableDebtContract.balanceOf(userAddress);

        const liquidityToSwap = amountWETHtoSwap;
        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);
        const userAEthBalanceBefore = await aUSDC.balanceOf(userAddress);
        const userWethBalanceBefore = await wnative.balanceOf(userAddress);

        const actualWEthSwapped = new BigNumber(liquidityToSwap.toString())
          .multipliedBy(0.995)
          .toFixed(0);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, actualWEthSwapped);

        const flashLoanDebt = new BigNumber(expectedDaiAmount.toString())
          .multipliedBy(1.0009)
          .toFixed(0);

        await mockUniswapRouter.setAmountIn(
          flashLoanDebt,
          wnative.address,
          usdc.address,
          actualWEthSwapped
        );

        const params = buildRepayAdapterParams(
          wnative.address,
          liquidityToSwap,
          1,
          0,
          0,
          0,
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          false
        );

        await expect(
          pool
            .connect(user)
            .flashLoan(
              uniswapRepayAdapter.address,
              [usdc.address],
              [expectedDaiAmount.toString()],
              [0],
              userAddress,
              params,
              0
            )
        )
          .to.emit(uniswapRepayAdapter, 'Swapped')
          .withArgs(wnative.address, usdc.address, actualWEthSwapped.toString(), flashLoanDebt);

        const adapterWethBalance = await wnative.balanceOf(uniswapRepayAdapter.address);
        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiStableDebtAmount = await daiStableDebtContract.balanceOf(userAddress);
        const userAEthBalance = await aUSDC.balanceOf(userAddress);
        const adapterAEthBalance = await aUSDC.balanceOf(uniswapRepayAdapter.address);
        const userWethBalance = await wnative.balanceOf(userAddress);

        expect(adapterAEthBalance).to.be.eq(Zero);
        expect(adapterWethBalance).to.be.eq(Zero);
        expect(adapterDaiBalance).to.be.eq(Zero);
        expect(userDaiStableDebtAmountBefore).to.be.gte(expectedDaiAmount);
        expect(userDaiStableDebtAmount).to.be.lt(expectedDaiAmount);
        expect(userAEthBalance).to.be.lt(userAEthBalanceBefore);
        expect(userAEthBalance).to.be.eq(userAEthBalanceBefore.sub(actualWEthSwapped));
        expect(userWethBalance).to.be.eq(userWethBalanceBefore);
      });

      it('should correctly swap tokens and repay the whole stable debt', async () => {
        const {
          users,
          pool,
          wnative,
          aUSDC,
          oracle,
          usdc,
          uniswapRepayAdapter,
          helpersContract,
        } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const daiStableDebtTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).stableDebtTokenAddress;

        const daiStableDebtContract = await getContract<StableDebtToken>(
          eContractid.StableDebtToken,
          daiStableDebtTokenAddress
        );

        const userDaiStableDebtAmountBefore = await daiStableDebtContract.balanceOf(userAddress);

        // Add a % to repay on top of the debt
        const liquidityToSwap = new BigNumber(amountWETHtoSwap.toString())
          .multipliedBy(1.1)
          .toFixed(0);

        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);
        const userAEthBalanceBefore = await aUSDC.balanceOf(userAddress);

        // Add a % to repay on top of the debt
        const amountToRepay = new BigNumber(expectedDaiAmount.toString())
          .multipliedBy(1.1)
          .toFixed(0);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, amountWETHtoSwap);
        await mockUniswapRouter.setDefaultMockValue(amountWETHtoSwap);

        const params = buildRepayAdapterParams(
          wnative.address,
          liquidityToSwap,
          1,
          0,
          0,
          0,
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          false
        );

        await pool
          .connect(user)
          .flashLoan(
            uniswapRepayAdapter.address,
            [usdc.address],
            [amountToRepay.toString()],
            [0],
            userAddress,
            params,
            0
          );

        const adapterWethBalance = await wnative.balanceOf(uniswapRepayAdapter.address);
        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiStableDebtAmount = await daiStableDebtContract.balanceOf(userAddress);
        const userAEthBalance = await aUSDC.balanceOf(userAddress);
        const adapterAEthBalance = await aUSDC.balanceOf(uniswapRepayAdapter.address);

        expect(adapterAEthBalance).to.be.eq(Zero);
        expect(adapterWethBalance).to.be.eq(Zero);
        expect(adapterDaiBalance).to.be.eq(Zero);
        expect(userDaiStableDebtAmountBefore).to.be.gte(expectedDaiAmount);
        expect(userDaiStableDebtAmount).to.be.eq(Zero);
        expect(userAEthBalance).to.be.lt(userAEthBalanceBefore);
        expect(userAEthBalance).to.be.gte(userAEthBalanceBefore.sub(liquidityToSwap));
      });

      it('should correctly swap tokens and repay the whole variable debt', async () => {
        const {
          users,
          pool,
          wnative,
          aUSDC,
          oracle,
          usdc,
          uniswapRepayAdapter,
          helpersContract,
        } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 2, 0, userAddress);

        const daiStableVariableTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).variableDebtTokenAddress;

        const daiVariableDebtContract = await getContract<StableDebtToken>(
          eContractid.VariableDebtToken,
          daiStableVariableTokenAddress
        );

        const userDaiVariableDebtAmountBefore = await daiVariableDebtContract.balanceOf(
          userAddress
        );

        // Add a % to repay on top of the debt
        const liquidityToSwap = new BigNumber(amountWETHtoSwap.toString())
          .multipliedBy(1.1)
          .toFixed(0);

        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);
        const userAEthBalanceBefore = await aUSDC.balanceOf(userAddress);

        // Add a % to repay on top of the debt
        const amountToRepay = new BigNumber(expectedDaiAmount.toString())
          .multipliedBy(1.1)
          .toFixed(0);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, amountWETHtoSwap);
        await mockUniswapRouter.setDefaultMockValue(amountWETHtoSwap);

        const params = buildRepayAdapterParams(
          wnative.address,
          liquidityToSwap,
          2,
          0,
          0,
          0,
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          false
        );

        await pool
          .connect(user)
          .flashLoan(
            uniswapRepayAdapter.address,
            [usdc.address],
            [amountToRepay.toString()],
            [0],
            userAddress,
            params,
            0
          );

        const adapterWethBalance = await wnative.balanceOf(uniswapRepayAdapter.address);
        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiVariableDebtAmount = await daiVariableDebtContract.balanceOf(userAddress);
        const userAEthBalance = await aUSDC.balanceOf(userAddress);
        const adapterAEthBalance = await aUSDC.balanceOf(uniswapRepayAdapter.address);

        expect(adapterAEthBalance).to.be.eq(Zero);
        expect(adapterWethBalance).to.be.eq(Zero);
        expect(adapterDaiBalance).to.be.eq(Zero);
        expect(userDaiVariableDebtAmountBefore).to.be.gte(expectedDaiAmount);
        expect(userDaiVariableDebtAmount).to.be.eq(Zero);
        expect(userAEthBalance).to.be.lt(userAEthBalanceBefore);
        expect(userAEthBalance).to.be.gte(userAEthBalanceBefore.sub(liquidityToSwap));
      });

      it('should correctly repay debt via flash loan using the same asset as collateral', async () => {
        const { users, pool, aUSDC, usdc, uniswapRepayAdapter, helpersContract } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        // Add deposit for user
        await usdc.mint(parseEther('30'));
        await usdc.approve(pool.address, parseEther('30'));
        await pool.deposit(usdc.address, parseEther('30'), userAddress, 0);

        const amountCollateralToSwap = parseEther('10');
        const debtAmount = parseEther('10');

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, debtAmount, 2, 0, userAddress);

        const daiVariableDebtTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).variableDebtTokenAddress;

        const daiVariableDebtContract = await getContract<VariableDebtToken>(
          eContractid.VariableDebtToken,
          daiVariableDebtTokenAddress
        );

        const userDaiVariableDebtAmountBefore = await daiVariableDebtContract.balanceOf(
          userAddress
        );

        const flashLoanDebt = new BigNumber(amountCollateralToSwap.toString())
          .multipliedBy(1.0009)
          .toFixed(0);

        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, flashLoanDebt);
        const userADaiBalanceBefore = await aUSDC.balanceOf(userAddress);
        const userDaiBalanceBefore = await usdc.balanceOf(userAddress);

        const params = buildRepayAdapterParams(
          usdc.address,
          amountCollateralToSwap,
          2,
          0,
          0,
          0,
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          '0x0000000000000000000000000000000000000000000000000000000000000000',
          false
        );

        await pool
          .connect(user)
          .flashLoan(
            uniswapRepayAdapter.address,
            [usdc.address],
            [amountCollateralToSwap.toString()],
            [0],
            userAddress,
            params,
            0
          );

        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiVariableDebtAmount = await daiVariableDebtContract.balanceOf(userAddress);
        const userADaiBalance = await aUSDC.balanceOf(userAddress);
        const adapterADaiBalance = await aUSDC.balanceOf(uniswapRepayAdapter.address);
        const userDaiBalance = await usdc.balanceOf(userAddress);

        expect(adapterADaiBalance).to.be.eq(Zero, 'adapter aDAI balance should be zero');
        expect(adapterDaiBalance).to.be.eq(Zero, 'adapter DAI balance should be zero');
        expect(userDaiVariableDebtAmountBefore).to.be.gte(
          debtAmount,
          ' user DAI variable debt before should be gte debtAmount'
        );
        expect(userDaiVariableDebtAmount).to.be.lt(
          debtAmount,
          'user usdc variable debt amount should be lt debt amount'
        );
        expect(userADaiBalance).to.be.lt(
          userADaiBalanceBefore,
          'user aDAI balance should be lt aDAI prior balance'
        );
        expect(userADaiBalance).to.be.gte(
          userADaiBalanceBefore.sub(flashLoanDebt),
          'user aDAI balance should be gte aDAI prior balance sub flash loan debt'
        );
        expect(userDaiBalance).to.be.eq(userDaiBalanceBefore, 'user usdc balance eq prior balance');
      });
    });

    describe('swapAndRepay', () => {
      it('should correctly swap tokens and repay debt', async () => {
        const {
          users,
          pool,
          wnative,
          aUSDC,
          oracle,
          usdc,
          uniswapRepayAdapter,
          helpersContract,
        } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const daiStableDebtTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).stableDebtTokenAddress;

        const daiStableDebtContract = await getContract<StableDebtToken>(
          eContractid.StableDebtToken,
          daiStableDebtTokenAddress
        );

        const userDaiStableDebtAmountBefore = await daiStableDebtContract.balanceOf(userAddress);

        const liquidityToSwap = amountWETHtoSwap;
        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);
        const userAEthBalanceBefore = await aUSDC.balanceOf(userAddress);

        await mockUniswapRouter.setAmountToSwap(wnative.address, liquidityToSwap);

        await mockUniswapRouter.setDefaultMockValue(liquidityToSwap);

        await uniswapRepayAdapter.connect(user).swapAndRepay(
          wnative.address,
          usdc.address,
          liquidityToSwap,
          expectedDaiAmount,
          1,
          {
            amount: 0,
            deadline: 0,
            v: 0,
            r: '0x0000000000000000000000000000000000000000000000000000000000000000',
            s: '0x0000000000000000000000000000000000000000000000000000000000000000',
          },
          false
        );

        const adapterWethBalance = await wnative.balanceOf(uniswapRepayAdapter.address);
        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiStableDebtAmount = await daiStableDebtContract.balanceOf(userAddress);
        const userAEthBalance = await aUSDC.balanceOf(userAddress);

        expect(adapterWethBalance).to.be.eq(Zero);
        expect(adapterDaiBalance).to.be.eq(Zero);
        expect(userDaiStableDebtAmountBefore).to.be.gte(expectedDaiAmount);
        expect(userDaiStableDebtAmount).to.be.lt(expectedDaiAmount);
        expect(userAEthBalance).to.be.lt(userAEthBalanceBefore);
        expect(userAEthBalance).to.be.gte(userAEthBalanceBefore.sub(liquidityToSwap));
      });

      it('should correctly swap tokens and repay debt with permit', async () => {
        const {
          users,
          pool,
          wnative,
          aUSDC,
          oracle,
          usdc,
          uniswapRepayAdapter,
          helpersContract,
        } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const daiStableDebtTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).stableDebtTokenAddress;

        const daiStableDebtContract = await getContract<StableDebtToken>(
          eContractid.StableDebtToken,
          daiStableDebtTokenAddress
        );

        const userDaiStableDebtAmountBefore = await daiStableDebtContract.balanceOf(userAddress);

        const liquidityToSwap = amountWETHtoSwap;
        const userAEthBalanceBefore = await aUSDC.balanceOf(userAddress);

        await mockUniswapRouter.setAmountToSwap(wnative.address, liquidityToSwap);

        await mockUniswapRouter.setDefaultMockValue(liquidityToSwap);

        const chainId = DRE.network.config.chainId || BUIDLEREVM_CHAINID;
        const deadline = MAX_UINT_AMOUNT;
        const nonce = (await aUSDC._nonces(userAddress)).toNumber();
        const msgParams = buildPermitParams(
          chainId,
          aUSDC.address,
          '1',
          await aUSDC.name(),
          userAddress,
          uniswapRepayAdapter.address,
          nonce,
          deadline,
          liquidityToSwap.toString()
        );

        const ownerPrivateKey = require('../test-wallets.js').accounts[1].secretKey;
        if (!ownerPrivateKey) {
          throw new Error('INVALID_OWNER_PK');
        }

        const { v, r, s } = getSignatureFromTypedData(ownerPrivateKey, msgParams);

        await uniswapRepayAdapter.connect(user).swapAndRepay(
          wnative.address,
          usdc.address,
          liquidityToSwap,
          expectedDaiAmount,
          1,
          {
            amount: liquidityToSwap,
            deadline,
            v,
            r,
            s,
          },
          false
        );

        const adapterWethBalance = await wnative.balanceOf(uniswapRepayAdapter.address);
        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiStableDebtAmount = await daiStableDebtContract.balanceOf(userAddress);
        const userAEthBalance = await aUSDC.balanceOf(userAddress);

        expect(adapterWethBalance).to.be.eq(Zero);
        expect(adapterDaiBalance).to.be.eq(Zero);
        expect(userDaiStableDebtAmountBefore).to.be.gte(expectedDaiAmount);
        expect(userDaiStableDebtAmount).to.be.lt(expectedDaiAmount);
        expect(userAEthBalance).to.be.lt(userAEthBalanceBefore);
        expect(userAEthBalance).to.be.gte(userAEthBalanceBefore.sub(liquidityToSwap));
      });

      it('should revert if there is not debt to repay', async () => {
        const { users, wnative, aUSDC, oracle, usdc, uniswapRepayAdapter } = testEnv;
        const user = users[0].signer;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        const liquidityToSwap = amountWETHtoSwap;
        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);

        await mockUniswapRouter.setAmountToSwap(wnative.address, liquidityToSwap);

        await mockUniswapRouter.setDefaultMockValue(liquidityToSwap);

        await expect(
          uniswapRepayAdapter.connect(user).swapAndRepay(
            wnative.address,
            usdc.address,
            liquidityToSwap,
            expectedDaiAmount,
            1,
            {
              amount: 0,
              deadline: 0,
              v: 0,
              r: '0x0000000000000000000000000000000000000000000000000000000000000000',
              s: '0x0000000000000000000000000000000000000000000000000000000000000000',
            },
            false
          )
        ).to.be.reverted;
      });

      it('should revert when max amount allowed to swap is bigger than max slippage', async () => {
        const { users, pool, wnative, aUSDC, oracle, usdc, uniswapRepayAdapter } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const bigMaxAmountToSwap = amountWETHtoSwap.mul(2);
        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, bigMaxAmountToSwap);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, bigMaxAmountToSwap);

        await mockUniswapRouter.setDefaultMockValue(bigMaxAmountToSwap);

        await expect(
          uniswapRepayAdapter.connect(user).swapAndRepay(
            wnative.address,
            usdc.address,
            bigMaxAmountToSwap,
            expectedDaiAmount,
            1,
            {
              amount: 0,
              deadline: 0,
              v: 0,
              r: '0x0000000000000000000000000000000000000000000000000000000000000000',
              s: '0x0000000000000000000000000000000000000000000000000000000000000000',
            },
            false
          )
        ).to.be.revertedWith('maxAmountToSwap exceed max slippage');
      });

      it('should swap, repay debt and pull the needed ATokens leaving no leftovers', async () => {
        const {
          users,
          pool,
          wnative,
          aUSDC,
          oracle,
          usdc,
          uniswapRepayAdapter,
          helpersContract,
        } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const daiStableDebtTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).stableDebtTokenAddress;

        const daiStableDebtContract = await getContract<StableDebtToken>(
          eContractid.StableDebtToken,
          daiStableDebtTokenAddress
        );

        const userDaiStableDebtAmountBefore = await daiStableDebtContract.balanceOf(userAddress);

        const liquidityToSwap = amountWETHtoSwap;
        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);
        const userAEthBalanceBefore = await aUSDC.balanceOf(userAddress);
        const userWethBalanceBefore = await wnative.balanceOf(userAddress);

        const actualWEthSwapped = new BigNumber(liquidityToSwap.toString())
          .multipliedBy(0.995)
          .toFixed(0);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, actualWEthSwapped);

        await mockUniswapRouter.setDefaultMockValue(actualWEthSwapped);

        await uniswapRepayAdapter.connect(user).swapAndRepay(
          wnative.address,
          usdc.address,
          liquidityToSwap,
          expectedDaiAmount,
          1,
          {
            amount: 0,
            deadline: 0,
            v: 0,
            r: '0x0000000000000000000000000000000000000000000000000000000000000000',
            s: '0x0000000000000000000000000000000000000000000000000000000000000000',
          },
          false
        );

        const adapterWethBalance = await wnative.balanceOf(uniswapRepayAdapter.address);
        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiStableDebtAmount = await daiStableDebtContract.balanceOf(userAddress);
        const userAEthBalance = await aUSDC.balanceOf(userAddress);
        const adapterAEthBalance = await aUSDC.balanceOf(uniswapRepayAdapter.address);
        const userWethBalance = await wnative.balanceOf(userAddress);

        expect(adapterAEthBalance).to.be.eq(Zero);
        expect(adapterWethBalance).to.be.eq(Zero);
        expect(adapterDaiBalance).to.be.eq(Zero);
        expect(userDaiStableDebtAmountBefore).to.be.gte(expectedDaiAmount);
        expect(userDaiStableDebtAmount).to.be.lt(expectedDaiAmount);
        expect(userAEthBalance).to.be.lt(userAEthBalanceBefore);
        expect(userAEthBalance).to.be.eq(userAEthBalanceBefore.sub(actualWEthSwapped));
        expect(userWethBalance).to.be.eq(userWethBalanceBefore);
      });

      it('should correctly swap tokens and repay the whole stable debt', async () => {
        const {
          users,
          pool,
          wnative,
          aUSDC,
          oracle,
          usdc,
          uniswapRepayAdapter,
          helpersContract,
        } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 1, 0, userAddress);

        const daiStableDebtTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).stableDebtTokenAddress;

        const daiStableDebtContract = await getContract<StableDebtToken>(
          eContractid.StableDebtToken,
          daiStableDebtTokenAddress
        );

        const userDaiStableDebtAmountBefore = await daiStableDebtContract.balanceOf(userAddress);

        // Add a % to repay on top of the debt
        const liquidityToSwap = new BigNumber(amountWETHtoSwap.toString())
          .multipliedBy(1.1)
          .toFixed(0);

        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);
        const userAEthBalanceBefore = await aUSDC.balanceOf(userAddress);

        // Add a % to repay on top of the debt
        const amountToRepay = new BigNumber(expectedDaiAmount.toString())
          .multipliedBy(1.1)
          .toFixed(0);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, amountWETHtoSwap);
        await mockUniswapRouter.setDefaultMockValue(amountWETHtoSwap);

        await uniswapRepayAdapter.connect(user).swapAndRepay(
          wnative.address,
          usdc.address,
          liquidityToSwap,
          amountToRepay,
          1,
          {
            amount: 0,
            deadline: 0,
            v: 0,
            r: '0x0000000000000000000000000000000000000000000000000000000000000000',
            s: '0x0000000000000000000000000000000000000000000000000000000000000000',
          },
          false
        );

        const adapterWethBalance = await wnative.balanceOf(uniswapRepayAdapter.address);
        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiStableDebtAmount = await daiStableDebtContract.balanceOf(userAddress);
        const userAEthBalance = await aUSDC.balanceOf(userAddress);
        const adapterAEthBalance = await aUSDC.balanceOf(uniswapRepayAdapter.address);

        expect(adapterAEthBalance).to.be.eq(Zero);
        expect(adapterWethBalance).to.be.eq(Zero);
        expect(adapterDaiBalance).to.be.eq(Zero);
        expect(userDaiStableDebtAmountBefore).to.be.gte(expectedDaiAmount);
        expect(userDaiStableDebtAmount).to.be.eq(Zero);
        expect(userAEthBalance).to.be.lt(userAEthBalanceBefore);
        expect(userAEthBalance).to.be.gte(userAEthBalanceBefore.sub(liquidityToSwap));
      });

      it('should correctly swap tokens and repay the whole variable debt', async () => {
        const {
          users,
          pool,
          wnative,
          aUSDC,
          oracle,
          usdc,
          uniswapRepayAdapter,
          helpersContract,
        } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        const amountWETHtoSwap = await convertToCurrencyDecimals(wnative.address, '10');

        const daiPrice = await oracle.getAssetPrice(usdc.address);
        const expectedDaiAmount = await convertToCurrencyDecimals(
          usdc.address,
          new BigNumber(amountWETHtoSwap.toString()).div(daiPrice.toString()).toFixed(0)
        );

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, expectedDaiAmount, 2, 0, userAddress);

        const daiStableVariableTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).variableDebtTokenAddress;

        const daiVariableDebtContract = await getContract<StableDebtToken>(
          eContractid.VariableDebtToken,
          daiStableVariableTokenAddress
        );

        const userDaiVariableDebtAmountBefore = await daiVariableDebtContract.balanceOf(
          userAddress
        );

        // Add a % to repay on top of the debt
        const liquidityToSwap = new BigNumber(amountWETHtoSwap.toString())
          .multipliedBy(1.1)
          .toFixed(0);

        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, liquidityToSwap);
        const userAEthBalanceBefore = await aUSDC.balanceOf(userAddress);

        // Add a % to repay on top of the debt
        const amountToRepay = new BigNumber(expectedDaiAmount.toString())
          .multipliedBy(1.1)
          .toFixed(0);

        await mockUniswapRouter.connect(user).setAmountToSwap(wnative.address, amountWETHtoSwap);
        await mockUniswapRouter.setDefaultMockValue(amountWETHtoSwap);

        await uniswapRepayAdapter.connect(user).swapAndRepay(
          wnative.address,
          usdc.address,
          liquidityToSwap,
          amountToRepay,
          2,
          {
            amount: 0,
            deadline: 0,
            v: 0,
            r: '0x0000000000000000000000000000000000000000000000000000000000000000',
            s: '0x0000000000000000000000000000000000000000000000000000000000000000',
          },
          false
        );

        const adapterWethBalance = await wnative.balanceOf(uniswapRepayAdapter.address);
        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiVariableDebtAmount = await daiVariableDebtContract.balanceOf(userAddress);
        const userAEthBalance = await aUSDC.balanceOf(userAddress);
        const adapterAEthBalance = await aUSDC.balanceOf(uniswapRepayAdapter.address);

        expect(adapterAEthBalance).to.be.eq(Zero);
        expect(adapterWethBalance).to.be.eq(Zero);
        expect(adapterDaiBalance).to.be.eq(Zero);
        expect(userDaiVariableDebtAmountBefore).to.be.gte(expectedDaiAmount);
        expect(userDaiVariableDebtAmount).to.be.eq(Zero);
        expect(userAEthBalance).to.be.lt(userAEthBalanceBefore);
        expect(userAEthBalance).to.be.gte(userAEthBalanceBefore.sub(liquidityToSwap));
      });

      it('should correctly repay debt using the same asset as collateral', async () => {
        const { users, pool, usdc, uniswapRepayAdapter, helpersContract, aUSDC } = testEnv;
        const user = users[0].signer;
        const userAddress = users[0].address;

        // Add deposit for user
        await usdc.mint(parseEther('30'));
        await usdc.approve(pool.address, parseEther('30'));
        await pool.deposit(usdc.address, parseEther('30'), userAddress, 0);

        const amountCollateralToSwap = parseEther('4');

        const debtAmount = parseEther('3');

        // Open user Debt
        await pool.connect(user).borrow(usdc.address, debtAmount, 2, 0, userAddress);

        const daiVariableDebtTokenAddress = (
          await helpersContract.getReserveTokensAddresses(usdc.address)
        ).variableDebtTokenAddress;

        const daiVariableDebtContract = await getContract<StableDebtToken>(
          eContractid.StableDebtToken,
          daiVariableDebtTokenAddress
        );

        const userDaiVariableDebtAmountBefore = await daiVariableDebtContract.balanceOf(
          userAddress
        );

        await aUSDC.connect(user).approve(uniswapRepayAdapter.address, amountCollateralToSwap);
        const userADaiBalanceBefore = await aUSDC.balanceOf(userAddress);
        const userDaiBalanceBefore = await usdc.balanceOf(userAddress);

        await uniswapRepayAdapter.connect(user).swapAndRepay(
          usdc.address,
          usdc.address,
          amountCollateralToSwap,
          amountCollateralToSwap,
          2,
          {
            amount: 0,
            deadline: 0,
            v: 0,
            r: '0x0000000000000000000000000000000000000000000000000000000000000000',
            s: '0x0000000000000000000000000000000000000000000000000000000000000000',
          },
          false
        );

        const adapterDaiBalance = await usdc.balanceOf(uniswapRepayAdapter.address);
        const userDaiVariableDebtAmount = await daiVariableDebtContract.balanceOf(userAddress);
        const userADaiBalance = await aUSDC.balanceOf(userAddress);
        const adapterADaiBalance = await aUSDC.balanceOf(uniswapRepayAdapter.address);
        const userDaiBalance = await usdc.balanceOf(userAddress);

        expect(adapterADaiBalance).to.be.eq(Zero, 'adapter aADAI should be zero');
        expect(adapterDaiBalance).to.be.eq(Zero, 'adapter DAI should be zero');
        expect(userDaiVariableDebtAmountBefore).to.be.gte(
          debtAmount,
          'user usdc variable debt before should be gte debtAmount'
        );
        expect(userDaiVariableDebtAmount).to.be.lt(
          debtAmount,
          'current user usdc variable debt amount should be less than debtAmount'
        );
        expect(userADaiBalance).to.be.lt(
          userADaiBalanceBefore,
          'current user aDAI balance should be less than prior balance'
        );
        expect(userADaiBalance).to.be.gte(
          userADaiBalanceBefore.sub(amountCollateralToSwap),
          'current user aDAI balance should be gte user balance sub swapped collateral'
        );
        expect(userDaiBalance).to.be.eq(
          userDaiBalanceBefore,
          'user DAI balance should remain equal'
        );
      });
    });
  });
});
