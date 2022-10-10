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
  AaveProtocolDataProvider as DataProvider
} from '../../contracts/misc/AaveProtocolDataProvider.sol';
import {
  LendingPoolAddressesProvider as AddressesProvider
} from '../../contracts/protocol/configuration/LendingPoolAddressesProvider.sol';
import {IERC20} from '../../contracts/dependencies/openzeppelin/contracts/IERC20.sol';
import {DataTypes} from '../../contracts/protocol/libraries/types/DataTypes.sol';
import {Errors} from '../../contracts/protocol/libraries/helpers/Errors.sol';
import {setupUpgrade} from './setup.t.sol';

contract lendingPoolInteractions is Test, setupUpgrade {
  address self = 0x1beeDEeF63d7746D5A6589B0993f92c6A832f6ba;
  address reserve = usdc;
  address agToken = agUSDC;

  function testDeposit() public {
    vm.startPrank(self);
    uint256 balanceReserve = IERC20(reserve).balanceOf(self);
    uint256 balanceMinted = IERC20(agToken).balanceOf(self);
    IERC20(reserve).approve(address(pool), uint256(-1));
    pool.deposit(reserve, 10000, self, 0);
    assertEq(IERC20(reserve).balanceOf(self), balanceReserve - 10000);
    assertEq(IERC20(agToken).balanceOf(self), balanceMinted + 10000);
    vm.stopPrank();
  }

  function testVariableBorrow() public {
    testDeposit();
    vm.startPrank(self);
    uint256 balanceMinted = IERC20(agToken).balanceOf(self);
    pool.borrow(reserve, 10000000, 2, 0, self);
    vm.stopPrank();
  }

  function testStableBorrow() public {
    testDeposit();
    vm.startPrank(self);
    uint256 balanceMinted = IERC20(agToken).balanceOf(self);
    pool.borrow(reserve, 10000000, 1, 0, self);
    vm.stopPrank();
  }

  function testRepayUsingReserve() public {
    testVariableBorrow();

    vm.startPrank(self);
    uint256 balanceReserve = IERC20(reserve).balanceOf(self);
    (
      uint256 currentATokenBalance,
      uint256 currentStableDebt,
      uint256 currentVariableDebt,
      ,
      ,
      ,
      ,
      ,
    )
 = dataProvider.getUserReserveData(reserve, self);

    IERC20(reserve).approve(address(pool), uint256(-1));
    pool.repay(reserve, currentVariableDebt, 2, self, false);
    vm.stopPrank();

    uint256 newBalanceReserve = IERC20(reserve).balanceOf(self);
    uint256 newBalanceMinted = IERC20(agToken).balanceOf(self);

    assertEq(balanceReserve, newBalanceReserve + currentVariableDebt);
    assertGe(newBalanceMinted, currentATokenBalance);
  }

  function testRepayUsingAgToken() public {
    testVariableBorrow();

    vm.startPrank(self);
    uint256 balanceReserve = IERC20(reserve).balanceOf(self);
    (
      uint256 currentATokenBalance,
      uint256 currentStableDebt,
      uint256 currentVariableDebt,
      ,
      ,
      ,
      ,
      ,
    ) = dataProvider.getUserReserveData(reserve, self);
    uint256 repayAmount =
      (currentVariableDebt > currentATokenBalance) ? currentATokenBalance : currentVariableDebt;

    IERC20(agToken).approve(address(pool), uint256(-1));
    pool.repay(reserve, repayAmount, 2, self, true);
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

    console2.log(pool_limits.depositLimit, pool_limits.borrowLimit, pool_limits.collateralUsageLimit);
  }

  function testFailDepositMoreThanDepositLimits() public {
    vm.startPrank(addressesProvider.getLendingPoolConfigurator());
    pool.setReserveLimits(reserve, 10, 10, 10000000000);
    vm.stopPrank();
    testDeposit();
  }
}

