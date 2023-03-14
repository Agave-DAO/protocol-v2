// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import 'forge-std/Test.sol';
import 'forge-std/console2.sol';
import {LendingPool} from '../../contracts/protocol/lendingpool/LendingPool.sol';
import {
  InitializableAdminUpgradeabilityProxy as Proxy
} from '../../contracts/dependencies/openzeppelin/upgradeability/InitializableAdminUpgradeabilityProxy.sol';
import {
  AgaveProtocolDataProvider as DataProvider
} from '../../contracts/misc/AgaveProtocolDataProvider.sol';
import {
  LendingPoolAddressesProvider as AddressesProvider
} from '../../contracts/protocol/configuration/LendingPoolAddressesProvider.sol';
import {
  IERC20Detailed as IERC20
} from '../../contracts/dependencies/openzeppelin/contracts/IERC20Detailed.sol';
import {DataTypes} from '../../contracts/protocol/libraries/types/DataTypes.sol';
import {Errors} from '../../contracts/protocol/libraries/helpers/Errors.sol';
import {SetupUpgrade} from './setup.t.sol';
import {PriceOracleTests} from './PriceOracle.t.sol';

contract lendingPoolInteractions is Test, SetupUpgrade, PriceOracleTests {
  address self = 0xb15279129c7e412e6002ED6EDC282b1c8a184195;
  address reserve = wxdai;
  address agToken = agWXDAI;
  address debtToken = address(debtWXDAI);
  uint256 maxUint = uint256(-1);

  function testDeposit() public {
    vm.startPrank(self);
    uint256 balanceReserve = IERC20(reserve).balanceOf(self);
    uint256 balanceMinted = IERC20(agToken).balanceOf(self);
    IERC20(reserve).approve(address(pool), maxUint);
    pool.deposit(reserve, 10000, self, 0);
    assertEq(IERC20(reserve).balanceOf(self), balanceReserve - 10000);
    assertEq(IERC20(agToken).balanceOf(self), balanceMinted + 10000);
    vm.stopPrank();
  }

  function testVariableBorrow() public {
    testDeposit();
    vm.startPrank(self);
    uint256 balanceMinted = IERC20(agToken).balanceOf(self);
    assertGe(balanceMinted, 10000);
    uint8 decimals = IERC20(reserve).decimals();
    pool.borrow(reserve, 10**uint256(decimals), 2, 0, self);
    vm.stopPrank();
  }

  function testVariableBorrowUsingGateway() public {
    testDeposit();
    vm.startPrank(self);
    debtWXDAI.approveDelegation(address(wxdaiGateway), maxUint);
    uint256 balanceMinted = IERC20(agToken).balanceOf(self);
    assertGe(balanceMinted, 10000);
    uint8 decimals = IERC20(reserve).decimals();
    wxdaiGateway.borrowETH(10**uint256(decimals), 2, 0);
    vm.stopPrank();
  }

  function testStableBorrow() public {
    testDeposit();
    vm.startPrank(self);
    uint256 balanceMinted = IERC20(agToken).balanceOf(self);
    assertGe(balanceMinted, 10000);
    uint8 decimals = IERC20(reserve).decimals();
    pool.borrow(reserve, 10**uint256(decimals), 1, 0, self);
    vm.stopPrank();
  }

  function testRepayUsingGateway() public {
    testVariableBorrowUsingGateway();

    vm.startPrank(self);
    uint256 balanceReserve = self.balance;
    (uint256 currentATokenBalance, , uint256 currentVariableDebt, , , , , , ) =
      dataProvider.getUserReserveData(reserve, self);

    IERC20(reserve).approve(address(pool), maxUint);
    wxdaiGateway.repayETH{value: currentVariableDebt}(currentVariableDebt, 2, self);
    vm.stopPrank();

    uint256 newBalanceReserve = self.balance;
    uint256 newBalanceMinted = IERC20(agToken).balanceOf(self);

    assertEq(balanceReserve, newBalanceReserve + currentVariableDebt);
    assertGe(newBalanceMinted, currentATokenBalance);
  }

  function testRepayUsingReserve() public {
    testVariableBorrow();

    vm.startPrank(self);
    uint256 balanceReserve = IERC20(reserve).balanceOf(self);
    (uint256 currentATokenBalance, , uint256 currentVariableDebt, , , , , , ) =
      dataProvider.getUserReserveData(reserve, self);

    IERC20(reserve).approve(address(pool), maxUint);
    vm.stopPrank();
    vm.prank(self);
    pool.repay(reserve, currentVariableDebt, 2, self);


    uint256 newBalanceReserve = IERC20(reserve).balanceOf(self);
    uint256 newBalanceMinted = IERC20(agToken).balanceOf(self);

    assertEq(balanceReserve, newBalanceReserve + currentVariableDebt);
    assertGe(newBalanceMinted, currentATokenBalance);
  }

  function testRepayUsingAgToken() public {
    testVariableBorrow();

    vm.startPrank(self);
    uint256 balanceReserve = IERC20(reserve).balanceOf(self);
    (uint256 currentATokenBalance, , uint256 currentVariableDebt, , , , , , ) =
      dataProvider.getUserReserveData(reserve, self);
    uint256 repayAmount =
      (currentVariableDebt > currentATokenBalance) ? currentATokenBalance : currentVariableDebt;

    IERC20(agToken).approve(address(pool), maxUint);
    pool.repayUsingAgToken(reserve, repayAmount, 2, self);
    vm.stopPrank();

    uint256 newBalanceReserve = IERC20(reserve).balanceOf(self);
    uint256 newBalanceMinted = IERC20(agToken).balanceOf(self);

    assertEq(balanceReserve, newBalanceReserve);
    assertGe(newBalanceMinted, currentATokenBalance - repayAmount);
  }

  function testWithdraw() public {
    testDeposit();
    vm.startPrank(self);
    uint256 balanceMinted = IERC20(agToken).balanceOf(self);
    pool.withdraw(reserve, balanceMinted, self);
    uint256 newBalanceMinted = IERC20(agToken).balanceOf(self);
    assertEq(newBalanceMinted, 0);
    vm.stopPrank();
  }

  function testSetLimits() public {
    vm.startPrank(addressesProvider.getLendingPoolConfigurator());
    pool.setReserveLimits(reserve, 50000000000, 1000000000, 10000000000);
    vm.stopPrank();
  }

  function testGetLimits() public {
    testSetLimits();
    DataTypes.ReserveLimits memory pool_limits = pool.getReserveLimits(reserve);

  }

  function testFailDepositMoreThanDepositLimits() public {
    vm.startPrank(addressesProvider.getPoolAdmin());
    configurator.setReserveLimits(reserve, 10, 10, 10000000000);
    vm.stopPrank();
    testDeposit();
  }

  function testFailVariableBorrowtMoreThanLimits() public {
    testDeposit();
    vm.startPrank(addressesProvider.getLendingPoolConfigurator());
    pool.setReserveLimits(reserve, 10, 10, 10000000000);
    vm.stopPrank();
    vm.startPrank(self);
    pool.borrow(reserve, 1000000, 2, 0, self);
    vm.stopPrank();
  }

  function testFailStableBorrowtMoreThanLimits() public {
    testDeposit();
    vm.startPrank(addressesProvider.getLendingPoolConfigurator());
    pool.setReserveLimits(reserve, 10, 10, 10000000000);
    vm.stopPrank();
    vm.startPrank(self);
    pool.borrow(reserve, 1000000, 1, 0, self);
    vm.stopPrank();
  }

  function testLiquidationCallReceiveUnderlyingPayUnderlying() public {
    testVariableBorrow();
    testIncreaseMockPrices();

    vm.startPrank(self);
    IERC20(reserve).approve(address(pool), maxUint);
    pool.liquidationCallUsingAgToken(gno, reserve, self, 1000, false);
    vm.stopPrank();
  }

  function testLiquidationCallReceiveAgTokenPayUnderlying() public {
    testVariableBorrow();
    testIncreaseMockPrices();

    vm.startPrank(self);
    IERC20(reserve).approve(address(pool), maxUint);
    pool.liquidationCallUsingAgToken(gno, reserve, self, 1000, true);
    vm.stopPrank();
  }

  function testLiquidationCallReceiveUnderlyingPayAgToken() public {
    testVariableBorrow();
    testIncreaseMockPrices();

    vm.startPrank(self);
    IERC20(reserve).approve(address(pool), maxUint);
    pool.liquidationCallUsingAgToken(gno, reserve, self, 10000, false);
    vm.stopPrank();
  }

  function testLiquidationCallReceiveAgTokenPayAgToken() public {
    testVariableBorrow();
    testIncreaseMockPrices();
    uint256 balanceBorrowedBefore = IERC20(usdc).balanceOf(self);
    uint256 balanceBorrowedAgBefore = IERC20(agUSDC).balanceOf(self);
    uint256 balanceCollateralAgBefore = IERC20(agGNO).balanceOf(self);
    uint256 balanceCollateralUnderlyingBefore = IERC20(gno).balanceOf(self);

    vm.startPrank(self);
    IERC20(reserve).approve(address(pool), maxUint);
    pool.liquidationCallUsingAgToken(gno, reserve, self, 10000, true);
    uint256 balanceBorrowedAfter = IERC20(usdc).balanceOf(self);
    uint256 balanceBorrowedAgAfter = IERC20(agUSDC).balanceOf(self);
    uint256 balanceCollateralAgAfter = IERC20(agGNO).balanceOf(self);
    uint256 balanceCollateralUnderlyingAfter = IERC20(gno).balanceOf(self);
    vm.stopPrank();

    console2.log('BorrowedReserve', balanceBorrowedBefore, balanceBorrowedAfter);
    console2.log('BorrowedAg', balanceBorrowedAgBefore, balanceBorrowedAgAfter);
    console2.log(
      'CollateralReserve',
      balanceCollateralUnderlyingBefore,
      balanceCollateralUnderlyingAfter
    );
    console2.log('CollateralAg', balanceCollateralAgBefore, balanceCollateralAgAfter);
  }

  function testLiquidationCallReceiveUnderlyingPayUnderlyingBackwardsCompatible() public {
    testVariableBorrow();
    testIncreaseMockPrices();

    vm.startPrank(self);
    IERC20(reserve).approve(address(pool), maxUint);

    pool.liquidationCall(gno, reserve, self, 1000, false);
    vm.stopPrank();
  }

    function testLiquidationCallReceiveAgTokenPayAgTokenBackwardsCompatible() public {
    testVariableBorrow();
    testIncreaseMockPrices();
    uint256 balanceBorrowedBefore = IERC20(usdc).balanceOf(self);
    uint256 balanceBorrowedAgBefore = IERC20(agUSDC).balanceOf(self);
    uint256 balanceCollateralAgBefore = IERC20(agGNO).balanceOf(self);
    uint256 balanceCollateralUnderlyingBefore = IERC20(gno).balanceOf(self);

    vm.startPrank(self);
    IERC20(reserve).approve(address(pool), maxUint);
    pool.liquidationCall(gno, reserve, self, 10000, true);
    uint256 balanceBorrowedAfter = IERC20(usdc).balanceOf(self);
    uint256 balanceBorrowedAgAfter = IERC20(agUSDC).balanceOf(self);
    uint256 balanceCollateralAgAfter = IERC20(agGNO).balanceOf(self);
    uint256 balanceCollateralUnderlyingAfter = IERC20(gno).balanceOf(self);
    vm.stopPrank();

    console2.log('BorrowedReserve', balanceBorrowedBefore, balanceBorrowedAfter);
    console2.log('BorrowedAg', balanceBorrowedAgBefore, balanceBorrowedAgAfter);
    console2.log(
      'CollateralReserve',
      balanceCollateralUnderlyingBefore,
      balanceCollateralUnderlyingAfter
    );
    console2.log('CollateralAg', balanceCollateralAgBefore, balanceCollateralAgAfter);
  }
}

