// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.6.12;

import "forge-std/Test.sol";
import "forge-std/console2.sol";
import {LendingPool} from "../../contracts/protocol/lendingpool/LendingPool.sol";
import {InitializableAdminUpgradeabilityProxy as Proxy} from "../../contracts/dependencies/openzeppelin/upgradeability/InitializableAdminUpgradeabilityProxy.sol";
import {AaveProtocolDataProvider as DataProvider} from "../../contracts/misc/AaveProtocolDataProvider.sol";
import {LendingPoolAddressesProvider as AddressesProvider} from "../../contracts/protocol/configuration/LendingPoolAddressesProvider.sol";
import {WETHGateway} from "../../contracts/misc/WETHGateway.sol";
import {AToken} from "../../contracts/protocol/tokenization/AToken.sol";


contract setupUpgrade is Test {

    AddressesProvider addressesProvider = AddressesProvider(0x3673C22153E363B1da69732c4E0aA71872Bbb87F);
    LendingPool pool = LendingPool(addressesProvider.getLendingPool());
    address wxdai = 0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d;
    address agWXDAI = 0xd4e420bBf00b0F409188b338c5D87Df761d6C894;
    address gno = 0x9C58BAcC331c9aa871AFD802DB6379a98e80CEdb;
    address agGNO = 0xA26783eAd6C1f4744685c14079950622674ae8A8;
    address usdc = 0xDDAfbb505ad214D7b80b1f830fcCc89B60fb7A83;
    address agUSDC = 0x291B5957c9CBe9Ca6f0b98281594b4eB495F4ec1;
    WETHGateway wxdaiGate = WETHGateway(0xB48505A15E584E244e5E02bB72c4bDB0d13a9e59);
    DataProvider dataProvider = DataProvider(0x24dCbd376Db23e4771375092344f5CbEA3541FC0);

    function setUp() public {
        vm.startPrank(0xb4c575308221CAA398e0DD2cDEB6B2f10d7b000A);
        addressesProvider.setPriceOracle(0xe9E7153E03d1a77ee2aAf0A91e0D278e4F71B462);
        addressesProvider.setLendingPoolCollateralManager(0x897aac43B8F22BA093Ac1D7C6c36Cf91e458ee8C);
        addressesProvider.setLendingPoolImpl(0xDD6267CCCb38c3F6B0bC6bE373D80179C2Cda2EC);
        vm.stopPrank();
    }

    function testIsUpgraded() public{
        vm.startPrank(0x3673C22153E363B1da69732c4E0aA71872Bbb87F);
        console2.log("LendingPool-admin",addressesProvider.getPoolAdmin());
        console2.log("LendingPool-proxy",addressesProvider.getLendingPool());
        console2.log("LendingPool-imp", Proxy(payable(addressesProvider.getLendingPool())).implementation());
        console2.log("lendingPoolCollateralmanager", addressesProvider.getLendingPoolCollateralManager());
        console2.log("AgaveOracle", addressesProvider.getPriceOracle());
        assertEq(Proxy(payable(addressesProvider.getLendingPool())).implementation(), 0xDD6267CCCb38c3F6B0bC6bE373D80179C2Cda2EC);
        assertEq(addressesProvider.getLendingPoolCollateralManager(), 0x897aac43B8F22BA093Ac1D7C6c36Cf91e458ee8C);
        assertEq(addressesProvider.getPriceOracle(), 0xe9E7153E03d1a77ee2aAf0A91e0D278e4F71B462);
        vm.stopPrank();
    }
}
