import { task } from 'hardhat/config';
import { EthereumNetwork } from '../../helpers/types';
import { getTreasuryAddress } from '../../helpers/configuration';
import * as marketConfigs from '../../markets/agave';
import * as reserveConfigs from '../../markets/agave/reservesConfigs';
import { chooseATokenDeployment } from '../../helpers/init-helpers';
import { getLendingPoolAddressesProvider } from './../../helpers/contracts-getters';
import {
  deployDefaultReserveInterestRateStrategy,
  deployStableDebtToken,
  deployVariableDebtToken,
} from './../../helpers/contracts-deployments';
import { setDRE } from '../../helpers/misc-utils';
import { ZERO_ADDRESS } from './../../helpers/constants';

const LENDING_POOL_ADDRESS_PROVIDER = {
  main: '0xb53c1a33016b2dc2ff3653530bff1848a515c8c5',
  kovan: '0x652B2937Efd0B5beA1c8d54293FC1289672AFC6b',
  xdai: '0xa91b9095efa6c0568467562032202108e49c9ef8',
};

const isSymbolValid = (symbol: string, network: EthereumNetwork) =>
  marketConfigs.AaveConfig.ReserveAssets[network][symbol] &&
  marketConfigs.AaveConfig.ReservesConfig[symbol] != null;

task('external:deploy-new-asset', 'Deploy A token, Debt Tokens, Risk Parameters')
  .addParam('symbol', `Asset symbol, needs to have configuration ready`)
  .addFlag('verify', 'Verify contracts at Etherscan')
  .setAction(async ({ verify, symbol }, localBRE) => {
    const network = localBRE.network.name;
    if (!isSymbolValid(symbol, network as EthereumNetwork)) {
      throw new Error(
        `
WRONG RESERVE ASSET SETUP:
        The symbol ${symbol} has no reserve Config and/or reserve Asset setup.
        update /markets/aave/index.ts and add the asset address for ${network} network
        update /markets/aave/reservesConfigs.ts and add parameters for ${symbol}
        `
      );
    }

    setDRE(localBRE);
    const strategyParams = marketConfigs.AaveConfig.ReservesConfig[symbol];
    const reserveAssetAddress =
      marketConfigs.AaveConfig.ReserveAssets[localBRE.network.name][symbol];
    const deployCustomAToken = chooseATokenDeployment(strategyParams.aTokenImpl);
    const addressProvider = await getLendingPoolAddressesProvider(
      LENDING_POOL_ADDRESS_PROVIDER[network]
    );
    const poolAddress = await addressProvider.getLendingPool();
    const treasuryAddress = await getTreasuryAddress(marketConfigs.AaveConfig);
    const incentiveControllerAddress = '0xfa255f5104f129B78f477e9a6D050a02f31A5D86';
    const displaySymbol = symbol != 'WNATIVE' ? symbol : marketConfigs.AaveConfig.WNativeSymbol;
    const aToken = await deployCustomAToken(
      [
        poolAddress,
        reserveAssetAddress,
        treasuryAddress,
        `Agave interest bearing ${displaySymbol}`,
        `ag${displaySymbol}`,
        incentiveControllerAddress,
      ],
      verify
    );
    const stableDebt = await deployStableDebtToken(
      [
        poolAddress,
        reserveAssetAddress,
        `Agave stable debt bearing ${displaySymbol}`,
        `stableDebt${displaySymbol}`,
        incentiveControllerAddress,
      ],
      verify
    );
    const variableDebt = await deployVariableDebtToken(
      [
        poolAddress,
        reserveAssetAddress,
        `Agave variable debt bearing ${displaySymbol}`,
        `variableDebt${displaySymbol}`,
        incentiveControllerAddress,
      ],
      verify
    );
    const rates = await deployDefaultReserveInterestRateStrategy(
      [
        addressProvider.address,
        strategyParams.optimalUtilizationRate,
        strategyParams.baseVariableBorrowRate,
        strategyParams.variableRateSlope1,
        strategyParams.variableRateSlope2,
        strategyParams.stableRateSlope1,
        strategyParams.stableRateSlope2,
      ],
      verify
    );
    console.log(`
    New interest bearing asset deployed on ${network}:
    Interest bearing ag${displaySymbol} address: ${aToken.address}
    Variable Debt variableDebt${displaySymbol} address: ${variableDebt.address}
    Stable Debt stableDebt${displaySymbol} address: ${stableDebt.address}
    Strategy Implementation for ${displaySymbol} address: ${rates.address}
    `);
  });
