import BigNumber from 'bignumber.js';
import {
  oneEther,
  oneRay,
  RAY,
  ZERO_ADDRESS,
  MOCK_CHAINLINK_AGGREGATORS_PRICES,
} from '../../helpers/constants';
import { ICommonConfiguration, eXDaiNetwork } from '../../helpers/types';

// ----------------
// PROTOCOL GLOBAL PARAMS
// ----------------

export const CommonsConfig: ICommonConfiguration = {
  MarketId: 'Commons',
  ATokenNamePrefix: 'Aave XDAI Market',
  StableDebtTokenNamePrefix: 'Aave XDAI Market stable debt',
  VariableDebtTokenNamePrefix: 'Aave XDAI Market variable debt',
  SymbolPrefix: 'm',
  ProviderId: 0, // Overriden in index.ts
  ProtocolGlobalParams: {
    TokenDistributorPercentageBase: '10000',
    MockUsdPriceInWei: '5848466240000000',
    UsdAddress: '0x10F7Fc1F91Ba351f9C629c5947AD69bD03C05b96',
    NilAddress: '0x0000000000000000000000000000000000000000',
    OneAddress: '0x0000000000000000000000000000000000000001',
    AaveReferral: '0',
  },

  // ----------------
  // COMMON PROTOCOL PARAMS ACROSS POOLS AND NETWORKS
  // ----------------

  Mocks: {
    AllAssetsInitialPrices: {
      ...MOCK_CHAINLINK_AGGREGATORS_PRICES,
    },
  },
  // TODO: reorg alphabetically, checking the reason of tests failing
  LendingRateOracleRatesCommon: {
    WETH: {
      borrowRate: oneRay.multipliedBy(0.03).toFixed(),
    },
    DAI: {
      borrowRate: oneRay.multipliedBy(0.039).toFixed(),
    },
    USDC: {
      borrowRate: oneRay.multipliedBy(0.039).toFixed(),
    },
    USDT: {
      borrowRate: oneRay.multipliedBy(0.035).toFixed(),
    },
    WBTC: {
      borrowRate: oneRay.multipliedBy(0.03).toFixed(),
    },
    STAKE: {
      borrowRate: oneRay.multipliedBy(0.05).toFixed(), // TEMP
    },
  },
  // ----------------
  // COMMON PROTOCOL ADDRESSES ACROSS POOLS
  // ----------------

  // If PoolAdmin/emergencyAdmin is set, will take priority over PoolAdminIndex/emergencyAdminIndex
  PoolAdmin: {
    [eXDaiNetwork.xdai]: "0xb4c575308221caa398e0dd2cdeb6b2f10d7b000a",
  },
  PoolAdminIndex: 0,
  EmergencyAdmin: {
    [eXDaiNetwork.xdai]: "0x70225281599Ba586039E7BD52736681DFf6c2Fc4",
  },
  EmergencyAdminIndex: 1,
  ProviderRegistry: {
    [eXDaiNetwork.xdai]: '',
  },
  ProviderRegistryOwner: {
    [eXDaiNetwork.xdai]: '0x70225281599ba586039e7bd52736681dff6c2fc4',
  },
  LendingPoolConfigurator: {
    [eXDaiNetwork.xdai]: '0x4a1ac23dC8df045524cf8b59B25D1ccAe2eA62F5',
  },
  LendingPool: {
    [eXDaiNetwork.xdai]: '0x5E15d5E33d318dCEd84Bfe3F4EACe07909bE6d9c',
  },
  LendingRateOracle: {
    [eXDaiNetwork.xdai]: '',
  },
  LendingPoolCollateralManager: {
    [eXDaiNetwork.xdai]: '',
  },
  TokenDistributor: {
    [eXDaiNetwork.xdai]: '',
  },
  WethGateway: {
    [eXDaiNetwork.xdai]: '',
  },
  AaveOracle: {
    [eXDaiNetwork.xdai]: '',
  },
  FallbackOracle: {
    [eXDaiNetwork.xdai]: ZERO_ADDRESS,
  },
  ChainlinkAggregator: {
    [eXDaiNetwork.xdai]: {
      USDC: '0x26C31ac71010aF62E6B486D1132E266D6298857D',
      WETH: '0xa767f745331D267c7751297D982b050c93985627',
      GNO: '0x22441d81416430A54336aB28765abd31a792Ad37',
      WBTC: '0x6C1d7e76EF7304a40e8456ce883BC56d3dEA3F7d',
      WNATIVE: '0x678df3415fc31947dA4324eC63212874be5a82f8',
      USD: '0x678df3415fc31947dA4324eC63212874be5a82f8',
      LINK: '0xed322a5ac55bae091190dff9066760b86751947b',
      FOX: '0x3190f6d277fea03a082eba20b136f95f0dccb3dd',
    },
  },
  ReserveAssets: {
    [eXDaiNetwork.xdai]: {},
  },
  ReservesConfig: {},
  ATokenDomainSeparator: {
    [eXDaiNetwork.xdai]: '',
  },
  WETH: {
    [eXDaiNetwork.xdai]: '0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d', // DAI: xDAI is the base token, DAI is also there, We need WXDAI
  },
  WrappedNativeToken: {
    [eXDaiNetwork.xdai]: '0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d', // DAI: xDAI is the base token, DAI is also there, We need WXDAI
  },
  ReserveFactorTreasuryAddress: {
    [eXDaiNetwork.xdai]: '0xb4c575308221CAA398e0DD2cDEB6B2f10d7b000A', // TEMP
  },
  IncentivesController: {
    [eXDaiNetwork.xdai]: '0xfa255f5104f129B78f477e9a6D050a02f31A5D86',
  },
};
