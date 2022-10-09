// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.6.12;

import "forge-std/Test.sol";
import "forge-std/console2.sol";
import {LendingPool} from "../contracts/protocol/lendingpool/LendingPool.sol";
import {AaveProtocolDataProvider as DataProvider} from "../contracts/misc/AaveProtocolDataProvider.sol";
import {LendingPoolAddressesProvider as AddressesProvider} from "../contracts/protocol/configuration/LendingPoolAddressesProvider.sol";
import {LendingPoolAddressesProviderRegistry} from "../contracts/protocol/configuration/LendingPoolAddressesProviderRegistry.sol";

contract setupUpgrade is Test {

    function setUp() public {
        vm.startPrank(0xb4c575308221CAA398e0DD2cDEB6B2f10d7b000A);
        AddressesProvider addressesProvider = AddressesProvider(0x3673C22153E363B1da69732c4E0aA71872Bbb87F);
        addressesProvider.setPriceOracle(0x22474D350EC2dA53D717E30b96e9a2B7628Ede5b);
        addressesProvider.setLendingPoolImpl(0xF2472c0FBB1b73a947fFFEa2922De3A86d58B08A);
        addressesProvider.setLendingPoolCollateralManager(0x98c792778FdB680CDf377eB16BB550002D4595ea);
        vm.stopPrank();
    }
}
