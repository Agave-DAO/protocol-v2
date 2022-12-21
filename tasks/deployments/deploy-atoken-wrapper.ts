import { task } from 'hardhat/config';
import { deployStaticATokenLM } from '../../helpers/contracts-deployments';
import { getFirstSigner } from '../../helpers/contracts-getters';
import { IERC20Detailed } from '../../types/IERC20Detailed';
import { IERC20DetailedFactory } from '../../types/IERC20DetailedFactory';

task(
  `deploy-atoken-wrapper`,
  `Deploy AToken Wrapper proxied with InitializableImmutableAdminUpgradeabilityProxy`
)
  .addParam('atokenaddress', 'AToken proxy address')
  .addFlag('verify', 'Verify UiPoolDataProvider contract via Etherscan API.')
  .setAction(
    async (
      {
        atokenaddress,
        verify,
      }: {
        atokenaddress: string;
        verify: boolean;
      },
      localBRE
    ) => {
      await localBRE.run('set-DRE');

      const pool = '0x5E15d5E33d318dCEd84Bfe3F4EACe07909bE6d9c';
      const proxyAdmin = '0xb4c575308221CAA398e0DD2cDEB6B2f10d7b000A';
      const incentivesController = '0xfa255f5104f129B78f477e9a6D050a02f31A5D86';

      const symbol = await IERC20DetailedFactory.connect(
        atokenaddress,
        await getFirstSigner()
      ).symbol();

      const { proxy, implementation } = await deployStaticATokenLM(
        [pool, atokenaddress, symbol, proxyAdmin, incentivesController],
        verify
      );

      console.log('- Deployed Static Wrapper for', symbol);
      console.log('  - Proxy: ', proxy);
      console.log('  - Impl : ', implementation);
    }
  );
