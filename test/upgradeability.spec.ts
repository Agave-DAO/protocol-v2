import { expect } from 'chai';
import { makeSuite, TestEnv } from './helpers/make-suite';
import { ProtocolErrors, eContractid } from '../helpers/types';
import { deployContract, getContract } from '../helpers/contracts-helpers';
import { MockAToken } from '../types/MockAToken';
import { MockStableDebtToken } from '../types/MockStableDebtToken';
import { MockVariableDebtToken } from '../types/MockVariableDebtToken';
import { ZERO_ADDRESS } from '../helpers/constants';
import {
  getAToken,
  getMockStableDebtToken,
  getMockVariableDebtToken,
  getVariableDebtToken,
} from '../helpers/contracts-getters';
import {
  deployMockAToken,
  deployMockStableDebtToken,
  deployMockVariableDebtToken,
} from '../helpers/contracts-deployments';

makeSuite('Upgradeability', (testEnv: TestEnv) => {
  const { CALLER_NOT_POOL_ADMIN } = ProtocolErrors;
  let newATokenAddress: string;
  let newStableTokenAddress: string;
  let newVariableTokenAddress: string;

  before('deploying instances', async () => {
    const { usdc, pool } = testEnv;
    const aTokenInstance = await deployMockAToken([
      pool.address,
      usdc.address,
      ZERO_ADDRESS,
      'Aave Interest bearing USDC updated',
      'aUSDC',
      ZERO_ADDRESS,
    ]);

    const stableDebtTokenInstance = await deployMockStableDebtToken([
      pool.address,
      usdc.address,
      'Aave stable debt bearing USDC updated',
      'stableDebtUSDC',
      ZERO_ADDRESS,
    ]);

    const variableDebtTokenInstance = await deployMockVariableDebtToken([
      pool.address,
      usdc.address,
      'Aave variable debt bearing USDC updated',
      'variableDebtUSDC',
      ZERO_ADDRESS,
    ]);

    newATokenAddress = aTokenInstance.address;
    newVariableTokenAddress = variableDebtTokenInstance.address;
    newStableTokenAddress = stableDebtTokenInstance.address;
  });

  it('Tries to update the USDC Atoken implementation with a different address than the lendingPoolManager', async () => {
    const { usdc, configurator, users } = testEnv;

    await expect(
      configurator.connect(users[1].signer).updateAToken(usdc.address, newATokenAddress)
    ).to.be.revertedWith(CALLER_NOT_POOL_ADMIN);
  });

  it('Upgrades the USDC Atoken implementation ', async () => {
    const { usdc, configurator, aUSDC } = testEnv;

    const name = await (await getAToken(newATokenAddress)).name();

    await configurator.updateAToken(usdc.address, newATokenAddress);

    const tokenName = await aUSDC.name();

    expect(tokenName).to.be.eq('Aave Interest bearing USDC updated', 'Invalid token name');
  });

  it('Tries to update the USDC Stable debt token implementation with a different address than the lendingPoolManager', async () => {
    const { usdc, configurator, users } = testEnv;

    await expect(
      configurator
        .connect(users[1].signer)
        .updateStableDebtToken(usdc.address, newStableTokenAddress)
    ).to.be.revertedWith(CALLER_NOT_POOL_ADMIN);
  });

  it('Upgrades the USDC stable debt token implementation ', async () => {
    const { usdc, configurator, pool, helpersContract } = testEnv;

    const name = await (await getAToken(newATokenAddress)).name();

    await configurator.updateStableDebtToken(usdc.address, newStableTokenAddress);

    const { stableDebtTokenAddress } = await helpersContract.getReserveTokensAddresses(
      usdc.address
    );

    const debtToken = await getMockStableDebtToken(stableDebtTokenAddress);

    const tokenName = await debtToken.name();

    expect(tokenName).to.be.eq('Aave stable debt bearing USDC updated', 'Invalid token name');
  });

  it('Tries to update the USDC variable debt token implementation with a different address than the lendingPoolManager', async () => {
    const { usdc, configurator, users } = testEnv;

    await expect(
      configurator
        .connect(users[1].signer)
        .updateVariableDebtToken(usdc.address, newVariableTokenAddress)
    ).to.be.revertedWith(CALLER_NOT_POOL_ADMIN);
  });

  it('Upgrades the USDC variable debt token implementation ', async () => {
    const { usdc, configurator, pool, helpersContract } = testEnv;

    const name = await (await getAToken(newATokenAddress)).name();

    await configurator.updateVariableDebtToken(usdc.address, newVariableTokenAddress);

    const { variableDebtTokenAddress } = await helpersContract.getReserveTokensAddresses(
      usdc.address
    );

    const debtToken = await getMockVariableDebtToken(variableDebtTokenAddress);

    const tokenName = await debtToken.name();

    expect(tokenName).to.be.eq('Aave variable debt bearing USDC updated', 'Invalid token name');
  });
});
