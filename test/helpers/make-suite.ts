import { evmRevert, evmSnapshot, DRE } from '../../helpers/misc-utils';
import { Signer } from 'ethers';
import {
  getLendingPool,
  getLendingPoolAddressesProvider,
  getAaveProtocolDataProvider,
  getAToken,
  getMintableERC20,
  getLendingPoolConfiguratorProxy,
  getPriceOracle,
  getLendingPoolAddressesProviderRegistry,
  getWETHMocked,
  getWETHGateway,
  getUniswapLiquiditySwapAdapter,
  getUniswapRepayAdapter,
  getFlashLiquidationAdapter,
} from '../../helpers/contracts-getters';
import { eEthereumNetwork, tEthereumAddress } from '../../helpers/types';
import { LendingPool } from '../../types/LendingPool';
import { AaveProtocolDataProvider } from '../../types/AaveProtocolDataProvider';
import { MintableERC20 } from '../../types/MintableERC20';
import { AToken } from '../../types/AToken';
import { LendingPoolConfigurator } from '../../types/LendingPoolConfigurator';

import chai from 'chai';
// @ts-ignore
import bignumberChai from 'chai-bignumber';
import { almostEqual } from './almost-equal';
import { PriceOracle } from '../../types/PriceOracle';
import { LendingPoolAddressesProvider } from '../../types/LendingPoolAddressesProvider';
import { LendingPoolAddressesProviderRegistry } from '../../types/LendingPoolAddressesProviderRegistry';
import { getEthersSigners } from '../../helpers/contracts-helpers';
import { UniswapLiquiditySwapAdapter } from '../../types/UniswapLiquiditySwapAdapter';
import { UniswapRepayAdapter } from '../../types/UniswapRepayAdapter';
import { getParamPerNetwork } from '../../helpers/contracts-helpers';
import { WETH9Mocked } from '../../types/WETH9Mocked';
import { WETHGateway } from '../../types/WETHGateway';
import { solidity } from 'ethereum-waffle';
import { AaveConfig } from '../../markets/agave';
import { FlashLiquidationAdapter } from '../../types';
import { HardhatRuntimeEnvironment } from 'hardhat/types';
import { usingTenderly } from '../../helpers/tenderly-utils';

chai.use(bignumberChai());
chai.use(almostEqual());
chai.use(solidity);

export interface SignerWithAddress {
  signer: Signer;
  address: tEthereumAddress;
}
export interface TestEnv {
  deployer: SignerWithAddress;
  users: SignerWithAddress[];
  pool: LendingPool;
  configurator: LendingPoolConfigurator;
  oracle: PriceOracle;
  helpersContract: AaveProtocolDataProvider;
  wnative: WETH9Mocked;
  aWNATIVE: AToken;
  weth: MintableERC20;
  aWETH: AToken;
  usdc: MintableERC20;
  aUSDC: AToken;
  aave: MintableERC20;
  addressesProvider: LendingPoolAddressesProvider;
  uniswapLiquiditySwapAdapter: UniswapLiquiditySwapAdapter;
  uniswapRepayAdapter: UniswapRepayAdapter;
  registry: LendingPoolAddressesProviderRegistry;
  wethGateway: WETHGateway;
  flashLiquidationAdapter: FlashLiquidationAdapter;
}

let buidlerevmSnapshotId: string = '0x1';
const setBuidlerevmSnapshotId = (id: string) => {
  buidlerevmSnapshotId = id;
};

const testEnv: TestEnv = {
  deployer: {} as SignerWithAddress,
  users: [] as SignerWithAddress[],
  pool: {} as LendingPool,
  configurator: {} as LendingPoolConfigurator,
  helpersContract: {} as AaveProtocolDataProvider,
  oracle: {} as PriceOracle,
  wnative: {} as WETH9Mocked,
  aWNATIVE: {} as AToken,
  weth: {} as MintableERC20,
  aWETH: {} as AToken,
  usdc: {} as MintableERC20,
  aUSDC: {} as AToken,
  aave: {} as MintableERC20,
  addressesProvider: {} as LendingPoolAddressesProvider,
  uniswapLiquiditySwapAdapter: {} as UniswapLiquiditySwapAdapter,
  uniswapRepayAdapter: {} as UniswapRepayAdapter,
  flashLiquidationAdapter: {} as FlashLiquidationAdapter,
  registry: {} as LendingPoolAddressesProviderRegistry,
  wethGateway: {} as WETHGateway,
} as TestEnv;

export async function initializeMakeSuite() {
  const [_deployer, ...restSigners] = await getEthersSigners();
  const deployer: SignerWithAddress = {
    address: await _deployer.getAddress(),
    signer: _deployer,
  };

  for (const signer of restSigners) {
    testEnv.users.push({
      signer,
      address: await signer.getAddress(),
    });
  }
  testEnv.deployer = deployer;
  testEnv.pool = await getLendingPool();

  testEnv.configurator = await getLendingPoolConfiguratorProxy();

  testEnv.addressesProvider = await getLendingPoolAddressesProvider();

  if (process.env.MAINNET_FORK === 'true') {
    testEnv.registry = await getLendingPoolAddressesProviderRegistry(
      getParamPerNetwork(AaveConfig.ProviderRegistry, eEthereumNetwork.main)
    );
  } else {
    testEnv.registry = await getLendingPoolAddressesProviderRegistry();
    testEnv.oracle = await getPriceOracle();
  }

  testEnv.helpersContract = await getAaveProtocolDataProvider();

  const allTokens = await testEnv.helpersContract.getAllATokens();
  const aWethAddress = allTokens.find((aToken) => aToken.symbol === 'agWETH')?.tokenAddress;
  const aUSDCAddress = allTokens.find((aToken) => aToken.symbol === 'agUSDC')?.tokenAddress;
  const aWNativeAddress = allTokens.find((aToken) => aToken.symbol === 'agWXDAI')?.tokenAddress;

  const reservesTokens = await testEnv.helpersContract.getAllReservesTokens();

  const wethAddress = reservesTokens.find((token) => token.symbol === 'WETH')?.tokenAddress;
  const usdcAddress = reservesTokens.find((token) => token.symbol === 'USDC')?.tokenAddress;
  const aaveAddress = reservesTokens.find((token) => token.symbol === 'AGVE')?.tokenAddress;
  const wnativeAddress = reservesTokens.find((token) => token.symbol === 'WNATIVE')?.tokenAddress;

  if (!aWethAddress || !aWNativeAddress || !aUSDCAddress) {
    console.log("Didn't find expected aTokens")
    process.exit(1);
  }
  if (!wethAddress || !usdcAddress || !aaveAddress || !wnativeAddress) {
    console.log("Didn't find expected reserve tokens")
    process.exit(1);
  }

  testEnv.aWETH = await getAToken(aWethAddress);
  testEnv.aWNATIVE = await getAToken(aWNativeAddress);
  testEnv.aUSDC = await getAToken(aUSDCAddress);

  testEnv.usdc = await getMintableERC20(usdcAddress);
  testEnv.aave = await getMintableERC20(aaveAddress);
  testEnv.weth = await getMintableERC20(wethAddress);
  testEnv.wnative = await getWETHMocked(wnativeAddress);
  testEnv.wethGateway = await getWETHGateway();

  testEnv.uniswapLiquiditySwapAdapter = await getUniswapLiquiditySwapAdapter();
  testEnv.uniswapRepayAdapter = await getUniswapRepayAdapter();
  testEnv.flashLiquidationAdapter = await getFlashLiquidationAdapter();
}

const setSnapshot = async () => {
  const hre = DRE as HardhatRuntimeEnvironment;
  if (usingTenderly()) {
    setBuidlerevmSnapshotId((await hre.tenderlyRPC.getHead()) || '0x1');
    return;
  }
  setBuidlerevmSnapshotId(await evmSnapshot());
};

const revertHead = async () => {
  const hre = DRE as HardhatRuntimeEnvironment;
  if (usingTenderly()) {
    await hre.tenderlyRPC.setHead(buidlerevmSnapshotId);
    return;
  }
  await evmRevert(buidlerevmSnapshotId);
};

export function makeSuite(name: string, tests: (testEnv: TestEnv) => void) {
  describe(name, () => {
    before(async () => {
      await setSnapshot();
    });
    tests(testEnv);
    after(async () => {
      await revertHead();
    });
  });
}
