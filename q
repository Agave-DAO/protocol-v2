[33mcommit c592f2384a9b6318ef03aafd3a1da736471b2139[m[33m ([m[1;36mHEAD -> [m[1;32mrecovery-process[m[33m, [m[1;31morigin/main[m[33m, [m[1;32mmain[m[33m)[m
Merge: aad84d1 3192279
Author: luigy-lemon <luigy-lemon@protonmail.com>
Date:   Fri Apr 8 13:37:07 2022 +0100

    Merge branch 'reentrancy-fix-liquidationCall' into xdai-deploy

[33mcommit 31922797ba110ddb3e908936b940b40221b7e190[m[33m ([m[1;31morigin/reentrancy-fix-liquidationCall[m[33m)[m
Author: luigy-lemon <luigy-lemon@protonmail.com>
Date:   Thu Apr 7 20:58:56 2022 +0100

    CollateralManager CEF fix following the hack on 15th of march

[33mcommit aad84d116e529b2a1acb584e4a06454b3a06cfd4[m[33m ([m[1;31morigin/xdai-deploy[m[33m)[m
Author: luigy-lemon <luigy-lemon@protonmail.com>
Date:   Wed Feb 9 16:30:13 2022 +0000

    add

[33mcommit e0f2c68cfeb9bcca982007a37535e2fecbc52d35[m
Author: luigy-lemon <luigy-lemon@protonmail.com>
Date:   Fri Jan 7 23:02:28 2022 +0000

    Adding GNO to xDAI Chain

[33mcommit 36b77f165d2c4e47cad6b30283403da7ab60ef6a[m
Merge: 5e741b5 503cfb5
Author: Luigy-Lemon <luigy-lemon@protonmail.com>
Date:   Sat Jan 1 17:41:09 2022 +0000

    Merge pull request #1 from Agave-DAO/asset-listing
    
    add LINK to agave

[33mcommit 503cfb5acd17fe7654ef15e653b216901a62afa4[m[33m ([m[1;31morigin/asset-listing[m[33m)[m
Author: anisoptera <isis@lotuswind.net>
Date:   Tue Dec 28 21:37:37 2021 -0800

    Fix some bugs with new asset deployment

[33mcommit 5aa68413bd921001792f407cadcd34966f5f5e4b[m
Author: luigy-lemon <luigy-lemon@protonmail.com>
Date:   Tue Dec 28 00:43:19 2021 +0000

    reversing trailing-comma lint

[33mcommit 029d5e1e1fa3ec617ba10ada579191a2097c9458[m
Author: luigy-lemon <luigy-lemon@protonmail.com>
Date:   Mon Dec 27 16:18:58 2021 +0000

    keep revision 1 as default

[33mcommit a3c219b1abb7ed6df261cc2d13376618facf2c95[m
Author: luigy-lemon <luigy-lemon@protonmail.com>
Date:   Mon Dec 27 15:34:56 2021 +0000

    add LINK to agave

[33mcommit 5e741b568d04fd931ce05a8d60bf6203deabdcf2[m
Author: luigy-lemon <luigy-lemon@protonmail.com>
Date:   Mon Oct 25 14:20:11 2021 +0100

    add STAKE on xDAI network

[33mcommit 7d9bd6a1ddd1503f6a9422fac62643b94046602b[m
Author: Isis Lynn McCafferty <isis@lotuswind.net>
Date:   Fri May 7 02:22:34 2021 -0700

    Updated with details from xdai deployment

[33mcommit df0b445e731f68b5bea171b168e85d2ea08ae0d5[m[33m ([m[1;31morigin/audited-contracts[m[33m, [m[1;32maudited-contracts[m[33m)[m
Author: anisoptera <isis@lotuswind.net>
Date:   Fri Mar 26 08:58:28 2021 -0700

    Update some names too

[33mcommit 979a86b66b03bdca3f3d6d7f3f1c40fc34a90c1a[m
Author: anisoptera <isis@lotuswind.net>
Date:   Wed Mar 24 11:26:14 2021 -0700

    Allow free basing of AaveOracle's output values
    
    Looks for an entry in our oracle map matching the address of our wrapped
    native token, and converts the price of the requested token into terms
    of that token. Assumes that the bases of the oracles in the map are the
    same.

[33mcommit d6fc511b7d88044d3f27e75d4f85ac1921f6a4b9[m
Author: anisoptera <isis@lotuswind.net>
Date:   Wed Mar 17 11:10:37 2021 -0700

    Redeployed clean registry in Rinkeby

[33mcommit 553241c448075dacd2371ae3bdaf2fe23becbe00[m
Author: anisoptera <isis@lotuswind.net>
Date:   Tue Mar 16 10:25:02 2021 -0700

    Update AGVE and USDC rinkeby addresses

[33mcommit 76387644a5dd39fea56e7ffe2c0a83d7ba36f202[m
Author: anisoptera <isis@lotuswind.net>
Date:   Tue Mar 16 03:16:59 2021 -0700

    Naming fixes
    
    Rename WNATIVE to WXDAI (or w/e)
    Rename deposit tokens to agTokens

[33mcommit ae1ae1cbe556214652769177f0f027c90d7ef63b[m
Author: anisoptera <isis@lotuswind.net>
Date:   Sun Mar 7 22:19:18 2021 -0800

    if you do it right, it's actually quite trivial

[33mcommit 9988b453296631508bc36f58b527263fb341e11f[m
Author: anisoptera <isis@lotuswind.net>
Date:   Sun Mar 7 22:09:13 2021 -0800

    Now with actually functioning oracle

[33mcommit 269dc63f1e2b9b7ad821e621043ccf77674d9660[m
Author: anisoptera <isis@lotuswind.net>
Date:   Sun Mar 7 20:38:47 2021 -0800

    Tweaks for rinkeby deploy

[33mcommit d872f756443d16b40104d2b9fc2deeb7358238ec[m
Author: anisoptera <isis@lotuswind.net>
Date:   Sun Mar 7 12:44:54 2021 -0800

    Now AaveOracle might actually work (todo: tests??)

[33mcommit 56faca116970e2bf39cbe8b2eafaf216cf3cbdaa[m
Author: anisoptera <isis@lotuswind.net>
Date:   Sun Mar 7 10:49:16 2021 -0800

    Use WNATIVE (DAI) in tests which might care about decimal precision

[33mcommit 175f64a92bde27a05674c032143b0a1bc3319843[m
Author: anisoptera <isis@lotuswind.net>
Date:   Sun Mar 7 01:04:44 2021 -0800

    All* tests pass

[33mcommit 237919bdcc81953c60b20ba4a30b29164c49cf6c[m
Author: anisoptera <isis@lotuswind.net>
Date:   Sat Mar 6 23:11:17 2021 -0800

    WIP: lots

[33mcommit 3ae9a4e319bfff005803da8f9a5cd9ec54f3af0a[m
Author: anisoptera <isis@lotuswind.net>
Date:   Wed Feb 24 12:17:28 2021 -0800

    WIP: AaveOracle change to support USD oracles
    
    In Agave, our oracles are based in USD. However, there is no native crypto asset
    which is *exactly* pegged to USD.
    Internally, Aave prices things in terms of the native token, and assumes
    that all oracles are priced in the native token (ETH). But on sidechains
    with different native tokens (e.g. xDai), it may be difficult to get
    a reliable oracle priced in terms of the native token.
    
    So, in getAssetPrice we now take the price of `WETH` in USD. `WETH` here
    refers to "the wrapped version of the native token".
    (Technically, this doesn't have to be USD; it just must be the same
    price basis as all of the other assets are using.)
    Then we divide the returned asset price by this value, and now we have
    the value of the asset in terms of the native token.

[33mcommit 9da5422e60b76d6d5b0fa92ebec3615fa1e03ea4[m
Merge: 3b22c4e d702443
Author: Isis Lynn McCafferty <isis@lotuswind.net>
Date:   Tue Feb 23 20:02:58 2021 -0800

    Merge pull request #1 from 0xGabi/xdai-deploy-adapters
    
    Add rinkeby deploy adapter scripts + rename agaave to agave

[33mcommit d7024439a09afc170bdd6b704832c050e6eb468d[m
Author: Gabi <gabrielpk.18@gmail.com>
Date:   Tue Feb 23 02:29:27 2021 -0300

    Add rinkeby deploy adapter scripts + rename agaave to agave

[33mcommit 3b22c4e7336c92a707a68338fc17c380b82be080[m
Author: anisoptera <isis@lotuswind.net>
Date:   Sat Feb 20 22:55:36 2021 -0800

    Now with rinkeby deployment

[33mcommit 20ca20a00384d5f3c65d94ed4433ce1723e53cd7[m
Author: anisoptera <isis@lotuswind.net>
Date:   Sun Jan 24 19:43:34 2021 -0800

    Functioning kovan deployment
    
    (also, changed a bunch of stuff to `agaave`)

[33mcommit 2708551bcf3afb28ee9798ccf7f3027ea0ecec10[m
Merge: de6437b 32ddc01
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Feb 5 10:07:34 2021 +0100

    Merge pull request #23 from aave/gitlab-merge
    
    Bring GitHub up to date with GitLab

[33mcommit 32ddc01ba98f574398fabf07b37408c18c1caf1f[m
Author: Zer0dot <zer0dot.dev@gmail.com>
Date:   Thu Feb 4 14:12:08 2021 -0500

    Fixed slight merge errors

[33mcommit 39e994f533ab6c0be4d44b256a4122af65ec33a8[m
Author: Zer0dot <zer0dot.dev@gmail.com>
Date:   Thu Feb 4 13:47:19 2021 -0500

    Checked out unmerged readme from gitlab

[33mcommit fc5129ec44485c9f15be85b83484e4b44dbd43e1[m
Author: Zer0dot <zer0dot.dev@gmail.com>
Date:   Thu Feb 4 13:45:56 2021 -0500

    Checked out unmerged audit file from gitlab

[33mcommit 0d1e673f5627613f9267df9cd6a77a396c664d93[m
Author: Zer0dot <zer0dot.dev@gmail.com>
Date:   Thu Feb 4 13:43:59 2021 -0500

    Removed an un-merged line break

[33mcommit d3de30ff5542487c867522ef94e4facb5a31c995[m
Merge: de6437b 776a6a4
Author: Zer0dot <zer0dot.dev@gmail.com>
Date:   Thu Feb 4 12:54:38 2021 -0500

    Merge remote-tracking branch 'gitlab/master' into gitlab-merge

[33mcommit de6437b54e0a0ebd0fefe89af85761d427af3876[m
Merge: 9b509ea 9e62528
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Feb 4 08:46:42 2021 +0100

    Merge pull request #20 from aave/fix/adapter-reserve
    
    Fixed memory usage adapter

[33mcommit 9e62528b98b071fbf9257ffc908211523a4b5248[m[33m ([m[1;31morigin/fix/adapter-reserve[m[33m)[m
Author: dhadrien <hadrien@variabl.io>
Date:   Wed Feb 3 15:57:34 2021 +0100

    Fixed memory usage

[33mcommit 776a6a4aae3bb9bdf7fb12a2bd6eb8b752be16a2[m
Merge: 00f414b 56e5efd
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Feb 3 09:43:49 2021 +0000

    Merge branch 'fix/hardhat-time-error' into 'master'
    
    Fix master test suite at CI
    
    See merge request aave-tech/protocol-v2!226

[33mcommit 56e5efd47b36d639fbe3eecf44e2b2d95e354c6e[m
Author: David Racero <4266635-kartojal@users.noreply.gitlab.com>
Date:   Wed Feb 3 09:22:22 2021 +0000

    Add a comment to specify why retries are being used at scenarios tests suite

[33mcommit f106502c72b0dd732eea6d726699ca83619d6386[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Feb 1 19:24:50 2021 +0100

    Add retries to scenarios to prevent random networking bug.

[33mcommit 3f6dd8a0f040b50368d188ce69db9c8642d10297[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Feb 1 17:54:02 2021 +0100

    Update hardhat to latest version. Add timeout to advanceTimeAndBlock function.

[33mcommit a4a6d3d4374d53e9fd312f173d393667540d2b39[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Feb 1 16:40:11 2021 +0100

    WIP change implementation of increaseTime

[33mcommit 00f414b681d7e0b8f0714ee843d2c75eb79b8097[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Feb 1 16:16:42 2021 +0100

    Updated test description

[33mcommit f48c8d7395feecfeeb0375a9e531b52c7644ec7c[m
Merge: 57d9d48 211dca7
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Feb 1 14:55:03 2021 +0000

    Merge branch '183-flash-liquidation-adapter' into 'master'
    
    Flash liquidation adapter
    
    Closes #183
    
    See merge request aave-tech/protocol-v2!212

[33mcommit 9b509eadbb85352b04d3b86994ebf7c36ffe6e8a[m
Merge: 480e1a2 9f94f04
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Feb 1 15:18:32 2021 +0100

    Merge pull request #17 from aave/fix/eth-eth-repay-w-collateral
    
    Fix eth->eth repay with collateral

[33mcommit 9f94f04b6cb384a3687791cbd56d909d454ef523[m[33m ([m[1;31morigin/fix/eth-eth-repay-w-collateral[m[33m)[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Feb 1 17:13:53 2021 +0300

    fix eth->eth repay with collateral

[33mcommit 211dca7a07c7959067074c7c68b58734742a8c2b[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Feb 1 13:24:07 2021 +0100

    Add new variable borrowedAssetLeftovers to improve readability

[33mcommit 480e1a22a80b3ae78046a9e372f6e069d80d945a[m
Merge: 09d084e f32aa52
Author: The-3D <37953689+The-3D@users.noreply.github.com>
Date:   Mon Feb 1 09:17:21 2021 +0100

    Merge pull request #16 from aave/github/feat/15-sp-report
    
    Adds SigmaPrime audit report

[33mcommit f32aa520e2c54abb2aaa1d6471813c5ef65e55a5[m[33m ([m[1;31morigin/github/feat/15-sp-report[m[33m)[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Feb 1 09:03:58 2021 +0100

    - Added SigmaPrime audit report

[33mcommit 37ac8b5297b89c485fdbffdf8703b246cfcaa9ad[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Jan 29 18:09:06 2021 +0100

    Add new edge case when flash liquidation same asset. Add tests.

[33mcommit d464b0d59264eff7e18754caf2c0916ace08691e[m
Merge: 55f14c1 57d9d48
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Jan 29 13:27:12 2021 +0100

    Pull  master and fix conflicts

[33mcommit 57d9d48bf8a9c8cba8d1dbb25d55b255e6fad06d[m
Merge: b029c94 b2d70ec
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Jan 29 09:13:42 2021 +0000

    Merge branch '201-add-protocol-contracts-to-the-npm' into 'master'
    
    Add protocol contracts to the npm
    
    Closes #201
    
    See merge request aave-tech/protocol-v2!224

[33mcommit b029c9436e066b3f6a67a57357f9df6afdd6d6e9[m
Merge: 717cb2b 80cfc7d
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Jan 28 13:32:39 2021 +0000

    Merge branch '198-add-lint-ci-ctep-to-reject-unformatted-code' into 'master'
    
    Add lint CI ctep to reject unformatted code
    
    See merge request aave-tech/protocol-v2!225

[33mcommit 80cfc7d0feea30e8949c28991862aa918207a608[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Jan 28 09:51:52 2021 +0100

    Add fixed format scenario test

[33mcommit da0b13757a55518b2780061d97844a109452c4c4[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Jan 27 16:57:26 2021 +0100

    Fix scenario and rename jobs

[33mcommit ba054edbd9ba62bd6f9d470b85463ee8387ece4b[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Jan 27 16:02:44 2021 +0100

    Test formatting error

[33mcommit 17af5986808f81b5cf723043758114d6970c8acc[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Jan 27 15:58:38 2021 +0100

    Add missing npm run to script

[33mcommit abb17b004dff94954fb072a96ff266ffc684b584[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Jan 27 15:46:04 2021 +0100

    Fix pre-commit

[33mcommit 6a503eb0a897124d8b9d126c915ffdf3e88343a9[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Jan 27 15:43:34 2021 +0100

    Lint files. Add all ts and sol files to pre-commit. Add prettier format check to CI.

[33mcommit 89db02e79c1689a9ba0d00ab32041f6ddc014fb1[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Jan 27 11:50:54 2021 +0100

    Add include

[33mcommit 41b7adb4cc2927e1f35527a7e72ca765a730a307[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Jan 27 10:49:30 2021 +0100

    Test super linter at Gitlab and Solidity

[33mcommit b2d70ec133e81128d8b9e5142cececeb91f12c36[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 26 14:02:47 2021 +0100

    Run tests before publish at master

[33mcommit 9169e0db62dbfe8122de848ae0c295ac7f683af9[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 26 13:46:48 2021 +0100

    Add notes about how to use NPM package to import contract or artifacts

[33mcommit e84ab7cf0355eb2a146f10ab6750fab73040095f[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 26 13:34:39 2021 +0100

    Allow detached to skip tests for testing publish

[33mcommit 2f4219d6430c01d07528d00b0a585c2329fd5aad[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 26 13:20:32 2021 +0100

    Detach mode to test prepare and publish step

[33mcommit 5434b279d1bcccde91189598400d0469349c7ab3[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 26 13:03:06 2021 +0100

    Fix detached missing tests

[33mcommit 422d843815332c954983fc735bb5fc5ed627b8d1[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 26 13:01:37 2021 +0100

    Run CI to test publish image prepare

[33mcommit 9cd6175f111e2d38f34cd4ac35c659a041323551[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 26 12:58:39 2021 +0100

    Fix gitlab ci

[33mcommit 56ba85e9463e2c7716684bfa5c86a03ade9b08d8[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 26 12:56:36 2021 +0100

    Add publish to Gitlab CI

[33mcommit 717cb2beb927bb9f335cd214158a550fdd7ec195[m
Merge: 29448c1 d605993
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Jan 25 11:49:39 2021 +0000

    Merge branch '199-add-support-of-repaying-debt-with-the-same-collateral-to-repay-adapter' into 'master'
    
    Resolve "Add support of repaying debt with the same collateral to repay adapter"
    
    Closes #199
    
    See merge request aave-tech/protocol-v2!222

[33mcommit 09d084eeb09adf58db66fed5c3972fb0dda9b395[m
Merge: 29448c1 7069480
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Jan 25 11:13:54 2021 +0100

    Merge pull request #6 from Eenae/master
    
    MixBytes report: added warning #44

[33mcommit d6059938bbf855d504097a24f448aa5356ea83c1[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Jan 25 09:29:07 2021 +0100

    - Fixed array init on BaseUniswapAdapter

[33mcommit 55f14c1af932d31465d8e0561195ccf439a0f243[m
Author: root <root@3275f9a1c93e>
Date:   Fri Jan 22 09:59:47 2021 +0000

    Use diff balances instead of liquidation logic for flash liquidations

[33mcommit f05550fc04b17eeda8d4511b99ec1eb25f0d3e9f[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Jan 21 20:21:56 2021 +0100

    Fixed master tests

[33mcommit 6cebf50f1114e39daa302e372c92bea3307903df[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Jan 21 17:44:48 2021 +0300

    add special quotation flow

[33mcommit c7a8f41d46620511392be89559e445dba3c030bf[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Jan 21 00:42:39 2021 +0100

    Added test fixes to support latest stable fix

[33mcommit a72b73d804290fd9b6150939055a7a0c33f146e8[m
Merge: 94dd996 29448c1
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Jan 20 09:27:33 2021 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 183-flash-liquidation-adapter

[33mcommit 29448c19c1e9b8aa87dccd70b716d15cdf4128f6[m[33m ([m[1;31morigin/protocol-2.5[m[33m)[m
Merge: b21dd83 3b11a4d
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Jan 19 11:46:36 2021 +0000

    Merge branch 'fix/185-validation-borrow' into 'master'
    
    - Fix non-initialized vars.rateMode on borrow validation
    
    See merge request aave-tech/protocol-v2!209

[33mcommit b21dd83abb57c017d7de93c9a44e9fb144748e73[m
Merge: c85bcbd 6009124
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Jan 19 11:07:01 2021 +0000

    Merge branch '196-fix-certora-ci' into 'master'
    
    Resolve "Fix Certora CI"
    
    Closes #196
    
    See merge request aave-tech/protocol-v2!218

[33mcommit 600912463f5eca9977b5b705001482a65cc08d35[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 19 09:57:36 2021 +0100

    Add waitTx for some missing scenario actions

[33mcommit 38d7711fbd9fae48a0d143f8edbcfa97c95ce541[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Jan 18 15:56:16 2021 +0100

    Apply fix

[33mcommit 94dd996666e7184d66a2a7201f8c35f60f16d679[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Jan 18 15:40:02 2021 +0100

    Add test cases for FlashLiquidationAdapter

[33mcommit 7040f9ea2e1b60ca4fba53f2c19d8827b6bc64c1[m
Merge: a9aff29 c85bcbd
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Jan 15 16:55:51 2021 +0100

    Fix conflicts

[33mcommit a9aff29b77a874f94df2c86bda7c055443bd8264[m
Merge: b432008 16a7398
Author: root <root@3275f9a1c93e>
Date:   Fri Jan 15 15:48:54 2021 +0000

    Flash liquidation fixes. Add working test for flash liquidation. Add Tenderly tests support.

[33mcommit c85bcbdae9f2a15bf8ff74594a0eed3cdfc81011[m
Merge: 3782bfd f11d007
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Jan 14 16:07:53 2021 +0000

    Merge branch '178-add-uniswap-adapters' into 'master'
    
    Resolve "Add Uniswap adapter for liquidity swap and repay with collateral using flashloan"
    
    Closes #178
    
    See merge request aave-tech/protocol-v2!201

[33mcommit f11d00756dacd1c76248cbe0f261d17766ee8e24[m
Merge: 16a7398 773bdd2
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Jan 14 15:48:41 2021 +0000

    Merge branch '195-latest-changes-to-the-uniswap-adapters' into '178-add-uniswap-adapters'
    
    Resolve "Latest changes to the uniswap adapters"
    
    See merge request aave-tech/protocol-v2!217

[33mcommit 773bdd252b311a1929c26b9339ace1b78c41e533[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Jan 14 15:21:42 2021 +0100

    Added latest fixes

[33mcommit 16a7398574f467145026bec5cd38957c323473bc[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Jan 14 11:53:48 2021 +0100

    Fixed tests. Add uniswap adapter test to package.json script

[33mcommit 611605eebf51a0be5fbd02f8a4fced68f0375072[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Jan 13 15:11:39 2021 +0100

    Fix mockup base tests. Separate uniswap adapter tests into separate files.

[33mcommit e5e61553c8344e7973e602f44c6031da11ec4077[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Jan 12 14:21:44 2021 +0100

    - Removed comments from BaseUniswapAdapter

[33mcommit 63ce8bc2bb6cdf64db08eea39dd66852276aa9b8[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 12 13:20:32 2021 +0100

    Revert "add withFlash flage to getAmountIn/Out"
    
    This reverts commit 3d2a8777704f60c58f3f19fbd78577216f79a680.

[33mcommit 46c753cea131a349cff6cdd47c5519d82dabbe59[m
Merge: 3d2a877 3782bfd
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Jan 12 12:11:03 2021 +0100

    Solve conflicts

[33mcommit b432008d06a41b321d4b7c87c34ad40332f99cc0[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Jan 11 17:40:25 2021 +0100

    Added flash liquidation adapter first iteration

[33mcommit 3782bfda1a9d0c9fa4c1bd26e69f1f3b3eed88ce[m
Merge: e2072c7 334718a
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Jan 8 10:01:38 2021 +0000

    Merge branch 'add-task-deploy-new-asset' into 'master'
    
    Add task deploy new assets before AIP
    
    See merge request aave-tech/protocol-v2!210

[33mcommit 334718a077b353028db49599cafac9eaa59dbbf9[m
Author: dhadrien <hadrien@variabl.io>
Date:   Tue Dec 22 11:37:08 2020 +0100

    added package.json script

[33mcommit e2072c708d32210018a1a3e0993916b1b3da5412[m
Merge: eea6d38 037ac78
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Jan 7 15:25:44 2021 +0000

    Merge branch '191-fix-readme-steps-fork' into 'master'
    
    Resolve "Fix README.md: steps for mainnet fork"
    
    Closes #191
    
    See merge request aave-tech/protocol-v2!213

[33mcommit 037ac78acb0615197fd88a3dca35a1c279319d75[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Jan 7 16:17:33 2021 +0100

    Added small guide to how to interact with Aave in Mainnet with console

[33mcommit e4f5c0defa9ee52170f3d119ebbd64e5741b871b[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Jan 7 13:51:03 2021 +0100

    rollback package-lock

[33mcommit 43df62a9c93400918017af4b2c28c8307de34dc1[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Jan 7 13:45:18 2021 +0100

    Fix README.md steps for mainnet fork. Added console fork mode. Fix infura subdomain in mainnet fork mode.

[33mcommit 706948021ef46a795c43fe11f8351d13400e3369[m
Author: Eenae <alexey@mixbytes.io>
Date:   Thu Dec 24 18:27:42 2020 +0300

    added warning #44

[33mcommit ec77c690b8dd588a2d5d1edd9a69660c68716058[m
Author: dhadrien <hadrien@variabl.io>
Date:   Tue Dec 22 10:15:50 2020 +0100

    Fixed script, working

[33mcommit 3b11a4dca14eb1c1311af131767470ac7a62d151[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Dec 22 10:13:57 2020 +0100

    - Fix non-initialized vars.rateMode on borrow validation

[33mcommit a3403631be1fcede3970352e99bd921aa026e8bc[m
Author: dhadrien <hadrien@variabl.io>
Date:   Mon Dec 21 17:13:51 2020 +0100

    added task for deploying new asset

[33mcommit 3d2a8777704f60c58f3f19fbd78577216f79a680[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Dec 9 13:29:25 2020 +0400

    add withFlash flage to getAmountIn/Out

[33mcommit eea6d38f243b909fc3cf82a581c45b8bc3d2390e[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 18:23:26 2020 +0100

    - Added Certora report

[33mcommit 279206814bfe40f43a69b7f06f6627d6d5d4b63a[m
Merge: dbd77ad 2fb5319
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Dec 3 16:33:34 2020 +0000

    Merge branch 'certora/integrationStep2' into 'master'
    
    Fixes and Updates to Integration of Certora FV
    
    See merge request aave-tech/protocol-v2!208

[33mcommit 2fb53195f519c2d971c6d00e45e98f77e6b616d8[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Dec 3 18:17:31 2020 +0200

    Updated runners

[33mcommit 169dbddd3e6c3cb19ebeae17fa0eb46e8e635986[m
Merge: 38039a3 cd85177
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Dec 3 18:13:34 2020 +0200

    Merge branch 'certora/integrationStep2' of https://gitlab.com/aave-tech/protocol-v2 into certora/integrationStep2

[33mcommit 38039a3b751cf6e19f31df398209e0670a7eb7d3[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Dec 3 18:13:22 2020 +0200

    Updated runners

[33mcommit eadaf066f2cac80767699d3cae1391776d4eba47[m[33m ([m[1;31morigin/178-add-uniswap-adapters[m[33m)[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 16:51:38 2020 +0100

    - Fixed _getAmountsOutData()

[33mcommit cd851770206a89daf941cd836863e2dd0e4e5119[m
Author: pistiner <or@certora.com>
Date:   Thu Dec 3 15:46:05 2020 +0000

    Update .gitlab-ci.yml

[33mcommit c7bd9d251149a46a829aabb43703ff0d2108c12a[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 16:35:05 2020 +0100

    - Fix _getAmountsInAndPath()

[33mcommit 291b92b5a36cbb14e879e00e6e9efe04c51bdd27[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Dec 3 17:33:23 2020 +0200

    Fixed compilation errors

[33mcommit 0293b082a946c696bd06627363557b04b98fcfb4[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Dec 3 17:28:25 2020 +0200

    Fixed imports

[33mcommit a84cfdabe2a4cbb10d91accc9b62d18afea1e3e0[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 16:24:57 2020 +0100

    - Fixed _getAmountsInAndPath() and _getAmountsOutData()

[33mcommit a7ba382b500c4dfc5aaee80eb8e26e35d04d611b[m
Merge: 6b9bed6 dbd77ad
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Dec 3 17:22:55 2020 +0200

    Merge branch 'master' of https://gitlab.com/aave-tech/protocol-v2 into certora/integrationStep2

[33mcommit 6b9bed65c4490694fada3dd454be89d520d8b42b[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Dec 3 17:20:11 2020 +0200

    Fix compilation errors

[33mcommit 5fdb4793337f64a1f5ee3724187cb9a871efc18a[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 16:11:05 2020 +0100

    - Fixed _getAmountsInAndPath()

[33mcommit 1ce83f27afa4f2b63aabfdadab065acf49d48cea[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Dec 3 17:01:13 2020 +0200

    Fixed imports

[33mcommit 68b94593becce3a5c884ed4f7f5497357c80c73d[m
Merge: 8289fa7 7cabeca
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Dec 3 16:59:20 2020 +0200

    Fixed imports

[33mcommit dbd77ad9312f607b420da746c2cb7385d734b015[m
Merge: 4471b05 513c7c0
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Dec 3 14:44:09 2020 +0000

    Merge branch 'certora/integrationStep2' into 'master'
    
    Integrating Certora FV into the CI: Step 2
    
    Closes #106
    
    See merge request aave-tech/protocol-v2!182

[33mcommit 4471b057a2fe4e810e381324550fe05141cc186f[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 14:43:50 2020 +0100

    - Updated links on README

[33mcommit 4826900c6a50db627ce23ca1baf7c4a76c07ffac[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 14:37:26 2020 +0100

    - Added Consensys audit report

[33mcommit aeded1520c667e59a564cf69f33a6e489b2fe489[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 14:27:12 2020 +0100

    - Added v2 whitepaper

[33mcommit 034a602d50beb9b85412002b36e31e887488f92e[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 14:24:41 2020 +0100

    - Added audit reports (Consensys pending)

[33mcommit 1916426ab1e0c63298932a7bac2eda421c3f7a12[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 12:13:06 2020 +0100

    - Added Ownable to BaseUniswapAdapter.

[33mcommit 84629bca2eec7cf570711764e46c285ab1cfa3ab[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Dec 3 11:36:15 2020 +0100

    - Added fallback condition for price prediction, both In and Out

[33mcommit ab5303bc7cfd66e806eadfae9c6173c6064412cc[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Dec 2 18:19:29 2020 +0100

    - Fixed calculation on _getAmountsOutData().
    - Optimizing outcome of _getAmountsInAndPath().

[33mcommit 1fec2aa5d1dd1839bfe290ab8084186fa9810e1d[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Dec 2 17:59:38 2020 +0100

    - Added basic selection of optimal path

[33mcommit 05dbfeccb3daa2a48f0707b17d6b30379e330453[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Dec 2 17:38:17 2020 +0100

    - Fixed issue with variadic length of amounts depending on path

[33mcommit 41efe9e811dcdc2de8ce8c9f348a9aaf0205f33d[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Dec 2 19:56:38 2020 +0400

    add WETH to constructor of swap adapters

[33mcommit d611b1e8dc01459dfc2c30640179a8836fbef900[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Dec 2 15:30:57 2020 +0100

    Updated to receive theindication on which path to use from outside

[33mcommit a25bdd92806232ab6defc2370eb1d358bfb7bf8e[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Dec 2 14:39:05 2020 +0100

    - Change path logic on repay adapter and base

[33mcommit 750920303e33b66bc29862ea3b85206dda9ce786[m[33m ([m[1;31morigin/ice/mainnet-deployment-03-12-2020[m[33m)[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Dec 2 12:50:33 2020 +0100

    - Added ascii to README

[33mcommit 8e0d64cd73fc9e1ac757aa11244fc5062c1ded9b[m
Merge: 39f71f9 3778ad6
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Wed Dec 2 10:48:52 2020 +0000

    Merge branch '181-check-configuration-and-scripts' into 'master'
    
    Use registry address from config at verification. Fix Provider verify. Fix WalletProvider verify.
    
    Closes #181
    
    See merge request aave-tech/protocol-v2!206

[33mcommit 8113cdaef14a31118aaf2a5dede9f496d1829342[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Dec 2 11:18:31 2020 +0100

    Updated migration scripts to receive external parameters

[33mcommit 39f71f961046572529d0706ddae91bb1984ce92f[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Dec 2 10:58:44 2020 +0100

    Prevent to hang if missing address at db json

[33mcommit 2e23281cdce8f8a0cf2daf1e29662502a263eefe[m
Merge: 6ce019c 57ee9e0
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Dec 2 10:14:03 2020 +0100

    Merge branch 'master' into 178-add-uniswap-adapters

[33mcommit 04c49117b8667fade25eb2c4be0e17d081683284[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Dec 2 09:57:47 2020 +0100

    Fix CI task. Move initialize tokens outside of full tasks.

[33mcommit f5d0ce14bbb4313f90aafd5c752345bb6284669c[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Dec 2 09:28:55 2020 +0100

    Fix verification tasks

[33mcommit 3778ad616373a33644bbdc2e103d09ce145d2c0b[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Dec 2 08:58:31 2020 +0100

    - Added all contributors to package.json

[33mcommit 86db408af5a92b7ba3a8ac217efaca80d2bee22e[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Dec 1 13:21:46 2020 +0100

    Added extra check to verify symbol of token implementation

[33mcommit e0025184a08da460dd96c97d5101c8f3ae6f0842[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Dec 1 12:39:54 2020 +0100

    Added resume initialization task

[33mcommit 6ce019c04a496aa34c89c4b043a375fbc9e4f497[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Dec 1 14:27:57 2020 +0400

    add deployment task for UniswapRepayAdapter

[33mcommit 7bd0e9afd1cc4fcf85e6952b39e6467efd3f1678[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Dec 1 10:29:30 2020 +0100

    Use registry address. Fix Provider verify. Fix WalletProvider verify.

[33mcommit 57ee9e0a7cf9a41f969965d4f49eefa907a30dfe[m
Merge: dd49b94 a2c9e00
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Nov 30 20:42:50 2020 +0000

    Merge branch '181-check-configuration-and-scripts' into 'master'
    
    Resolve "Check configuration and scripts"
    
    Closes #181
    
    See merge request aave-tech/protocol-v2!204

[33mcommit a2c9e0074f08061ee5b59ba26c77f0e9bceb289c[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 30 19:47:16 2020 +0100

    Add kovan print config

[33mcommit 3f46697d24a3cff97280a7303d1ffd514a0f0060[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 30 19:41:42 2020 +0100

    Added tokens, fix getter

[33mcommit ac63cfaf05f55f430f2704fea9dd5e005f33265c[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 30 19:25:06 2020 +0100

    Minor changes to deploy scripts. Fix token verify errors. Added new task for print providers config.

[33mcommit dd49b94c7716848e3273e22075db9ae976da7141[m
Merge: 3b53443 12121d4
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Nov 30 17:23:53 2020 +0000

    Merge branch 'feat/182-cred-del-interface' into 'master'
    
    Feat/182 cred del interface
    
    Closes #182
    
    See merge request aave-tech/protocol-v2!205

[33mcommit 12121d41f46f28646f999e7da087330a4bb27145[m
Merge: aa7c124 3b53443
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 30 18:16:47 2020 +0100

    Merge branch 'master' into feat/182-cred-del-interface

[33mcommit aa7c124a11eff40e430fc5e4a4cbee0086f77c6a[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 30 18:16:25 2020 +0100

    - Added credit delegation interface to debt tokens.

[33mcommit 3b5344388d5f766017921a3263e0304fed9ce1dd[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Nov 30 18:14:21 2020 +0100

    Fixed failing test after updating the latest risk parameters

[33mcommit 911db5b0d6bebb3babeca4afaaf1e4a8a6680688[m
Merge: 0ebcc04 e95e0c7
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Nov 30 14:18:18 2020 +0000

    Merge branch 'feat/180-oracles-configs-main' into 'master'
    
    - Added oracles mainnet addresses
    
    Closes #180
    
    See merge request aave-tech/protocol-v2!203

[33mcommit a21d82364673e9798e0135b65e59dfc030e7b50f[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 30 14:32:01 2020 +0100

    Remove console logs

[33mcommit c22533f13980fe719c8fd97989d8dc5510444978[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 30 14:27:56 2020 +0100

    Add lending provider kovan address at deploy-UniswapRepayAdapter task

[33mcommit a21757d0fc9017f797071c94ff57a95ed2f7dba2[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Nov 30 17:14:29 2020 +0400

    adoption to the latest

[33mcommit e95e0c795e2bc2e8bab97eca86ab69bebf928d79[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 30 13:51:22 2020 +0100

    - Added oracles mainnet addresses

[33mcommit 0ebcc04d5039a8c6ee7ebb6ac2b3485533be362c[m
Merge: 51d0604 8334670
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 30 12:17:17 2020 +0000

    Merge branch 'fix/177' into 'master'
    
    Resolve "Update the configuration parameters for mainnet"
    
    Closes #177
    
    See merge request aave-tech/protocol-v2!200

[33mcommit 83346703a509b927975d2bfa17b10a9d8e296cb8[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Nov 30 13:08:37 2020 +0100

    Fixed liquidation tests

[33mcommit 4bb7d0c5dbfbb7ba4288affb25ba19a912388df9[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Nov 30 12:53:33 2020 +0100

    Updated config

[33mcommit 59d5c3a6a9be5a8148a81dccb9e54039394affc2[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Nov 30 12:49:31 2020 +0100

    Fixed configuration parameters

[33mcommit b4a08415775bd243c4a7e9ce0b3c427c9878c071[m
Merge: a32d1ce 51d0604
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Nov 30 15:11:35 2020 +0400

    Merge branch 'master' into 178-add-uniswap-adapters

[33mcommit 51d06041220fd394e3dc937f8a68e793d451477f[m
Merge: e25594c 9d1c021
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Mon Nov 30 11:09:56 2020 +0000

    Merge branch 'feat/179-flash-receiver-base' into 'master'
    
    - Modified FlashLoanReceiverBase
    
    Closes #179
    
    See merge request aave-tech/protocol-v2!202

[33mcommit 9d1c021945ea40b64a2c4f4757e7ed4f97a99567[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 30 12:02:34 2020 +0100

    - Modified FlashLoanReceiverBase

[33mcommit ae0414eb238b4280400cb8cfec571420054f29d6[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Nov 30 12:01:26 2020 +0100

    Fixed configuration tests

[33mcommit 587008d1e1d91846a0cee7b993e77d0f93bcedaf[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Nov 30 11:26:14 2020 +0100

    Updated configuration

[33mcommit a32d1ce4048db15c17a04862e27c6bacba672c93[m
Merge: e25594c b41ccf7
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Mon Nov 30 10:21:46 2020 +0000

    Merge branch 'feat/uniswap-adapter-flashloan' into '178-add-uniswap-adapters'
    
    Add Uniswap adapter for liquidity swap and repay with collateral using flashloan
    
    See merge request aave-tech/protocol-v2!106

[33mcommit e25594ca7dba7814b3739f365fe02b49c5b3fe51[m
Merge: 495eed3 18ce2b3
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Nov 30 08:40:45 2020 +0000

    Merge branch 'feat/176-getmarketid-view' into 'master'
    
    - Added `view` to getMarketId()
    
    Closes #176
    
    See merge request aave-tech/protocol-v2!199

[33mcommit 18ce2b363747f31c85684cd6f7ce997ed80bda0e[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 30 09:23:31 2020 +0100

    - Added `view` to getMarketId()

[33mcommit 495eed33ca03dae2c7b65c18773d10fc2c64c0f8[m
Merge: 872eb3f 9fc6c32
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Sat Nov 28 17:29:02 2020 +0000

    Merge branch 'fix/175' into 'master'
    
    Resolve "Update test scenarios to properly handle the reserve factor"
    
    Closes #175
    
    See merge request aave-tech/protocol-v2!198

[33mcommit 9fc6c3290501c704ef973c863eac0d30f2d5be1c[m
Author: The3D <emilio@aave.com>
Date:   Sat Nov 28 13:33:35 2020 +0100

    Removed redundant code in ATokensAndRatesHelper

[33mcommit dcc60f5966e630ff523f75c52c4cb449d6b889d0[m
Author: The3D <emilio@aave.com>
Date:   Sat Nov 28 13:32:13 2020 +0100

    Updated migration script

[33mcommit c9875f0a8f068acd51925c3bbb71a46965d8fc7f[m
Author: The3D <emilio@aave.com>
Date:   Sat Nov 28 13:28:50 2020 +0100

    Handled reserveFactor in the scenario tests

[33mcommit 7892587f1b48b77027be04be0eb5a1b66a26a185[m
Author: The3D <emilio@aave.com>
Date:   Sat Nov 28 12:54:54 2020 +0100

    Updated migration scripts to add the reserve factor configuration

[33mcommit 872eb3ff948b5e84fdc45da5324b2f4a565ef87e[m
Merge: 903352e 2bebc6f
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Sat Nov 28 07:59:07 2020 +0000

    Merge branch 'fix/172' into 'master'
    
    Resolve "Add reserveFactor to the migration scripts"
    
    Closes #172
    
    See merge request aave-tech/protocol-v2!195

[33mcommit 2bebc6fdfd5108f3b18e46bf83afcd87e407ab81[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 27 18:26:00 2020 +0100

    Removed space

[33mcommit e5ec690a21d850784e327b82c9539adaa29128e7[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 27 18:23:17 2020 +0100

    Removed unused code

[33mcommit bfa52fb3a8ac72b022b9fbe0a6d5a27b25e70a40[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 27 18:22:23 2020 +0100

    Fixed tests

[33mcommit 9165cdc4d5f19ca8478e76dcabe3ada780840f3f[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 27 18:18:31 2020 +0100

    Updated migration scripts for the reserve factor

[33mcommit 903352eaeae11e8f7364f2331085320a30e62c86[m
Merge: 2b9e62f 7982313
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 27 17:16:52 2020 +0000

    Merge branch 'fix/174' into 'master'
    
    Resolve "Improve event emission on the burn function"
    
    Closes #174
    
    See merge request aave-tech/protocol-v2!197

[33mcommit 798231306bc58097709cf9241ac5d3fb95786f24[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 27 16:51:21 2020 +0100

    Updated event on burn of stable debt

[33mcommit 8cff75f7e3e7af24dab14ba0b896a252623d60d9[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 27 16:40:00 2020 +0100

    Migration scripts updated

[33mcommit 2b9e62f1f6df8a3a65bb38386a5d6135ef5ba376[m
Merge: 578f317 ae94f8b
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Nov 27 14:31:06 2020 +0000

    Merge branch 'feat/173-receiver-base' into 'master'
    
    - Added initialization of _lendingPool to FlashLoanReceiverBase and getters.
    
    Closes #173
    
    See merge request aave-tech/protocol-v2!196

[33mcommit ae94f8ba4939477fdbb72400e7fdcdcb563676b6[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 27 15:15:05 2020 +0100

    - Added initialization of _lendingPool to FlashLoanReceiverBase and getters.

[33mcommit c7a0ca5fb05c2120184caf24681d0c5da1b66ef4[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 27 11:18:04 2020 +0100

    Added reservefactor to the commons configuration

[33mcommit 578f3171bf732b880844036559fe9d83d8b59992[m
Merge: 4e25664 5e9ccb5
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Nov 27 09:08:23 2020 +0000

    Merge branch 'fix/171-getter-marketid' into 'master'
    
    - Added getter to _marketId
    
    Closes #171
    
    See merge request aave-tech/protocol-v2!194

[33mcommit 5e9ccb5244edea9db09ddbdf2d292ca75104a515[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 27 10:00:11 2020 +0100

    - Added getter to _marketId

[33mcommit 4e25664eef91eca2311ad730c9081b7a9be20bf0[m
Merge: b7bae0c c5d6fdb
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 16:16:25 2020 +0000

    Merge branch 'fix/141' into 'master'
    
    Resolve "Add github syntax highlighting config"
    
    Closes #141
    
    See merge request aave-tech/protocol-v2!158

[33mcommit b7bae0cb67988fa5ce852786cecfdcbdca64e63c[m
Merge: f6a3349 3d6150a
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 16:13:04 2020 +0000

    Merge branch 'feat/166-market-id' into 'master'
    
    - Added marketId and setter on LendingPoolAddressesProvider
    
    Closes #166
    
    See merge request aave-tech/protocol-v2!189

[33mcommit 3d6150a729e9c19c9d676e5d88c9b4617a1b9c52[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 17:08:09 2020 +0100

    - Added test for onlyOwner on setMarketId()

[33mcommit c5d6fdba275e781da5644ffae60d8995c1485723[m
Merge: 5e4ea2b 3b85560
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 16:56:12 2020 +0100

    Merge branch 'master' into fix/141

[33mcommit f6a33495e298dbaae6b7116bc43669edb2e1a653[m
Merge: 2adbc54 3f070d6
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 15:49:35 2020 +0000

    Merge branch 'fix/167-usage-collateral-liquidation' into 'master'
    
    - Added set of usage as collateral to true on liquidator receiving aToken.
    
    Closes #167
    
    See merge request aave-tech/protocol-v2!193

[33mcommit 3f070d67ecddfb3a66189fd998b4fe72d25ec937[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 16:44:32 2020 +0100

    - Added set of usage as collateral to true on liquidator receiving aToken.

[33mcommit b41ccf744182f3219be31e8a3981dd7187e19dde[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Thu Nov 26 12:42:42 2020 -0300

    Add repay with same asset unit test

[33mcommit 2adbc54475afbd52c8e2d9fa15be856b06d8987c[m
Merge: 3b85560 3426424
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 15:29:27 2020 +0000

    Merge branch 'fix/159' into 'master'
    
    Resolve "Fix the updateInterestRates on flashloan"
    
    Closes #159
    
    See merge request aave-tech/protocol-v2!180

[33mcommit 34264243be273260b83928199bf2ec1af2aa214f[m
Merge: 584a567 3b85560
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 16:18:33 2020 +0100

    Merge branch 'master' into fix/159

[33mcommit 3b855603409483a747cc4dcfb0131a2f369f14d8[m
Merge: 9924ecc 47e80d7
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 15:17:03 2020 +0000

    Merge branch '170-move-mint-after-the-transfer-in-deposit' into 'master'
    
    Resolve "Move mint() after the transfer in deposit()"
    
    Closes #170
    
    See merge request aave-tech/protocol-v2!191

[33mcommit 9924ecc64ae29f8bf47f312aea56642aba3828e5[m
Merge: e9a94b2 fce475e
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 15:14:19 2020 +0000

    Merge branch 'feat/168-remove-initialize' into 'master'
    
    - Remove useless initialize()
    
    Closes #168
    
    See merge request aave-tech/protocol-v2!192

[33mcommit 43712d8a2bb8c3d409d1131bd33f129317899f82[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 26 16:11:40 2020 +0100

    Support marketId argument

[33mcommit fce475ee91109b6ff9a7a4e1b25f09f0f7c21a20[m
Merge: b2a871f e9a94b2
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 16:03:12 2020 +0100

    Merge branch 'master' into feat/168-remove-initialize

[33mcommit b2a871f8f780597b5c04026ee08ad4def75a215c[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 16:02:51 2020 +0100

    - Removed unneed (and potentially harmful) initialize() from DelegationAwareAToken.

[33mcommit e9a94b29a9c0aeefc2dde9143f9a67be3bed143f[m
Merge: e1f636c 73c1934
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 14:57:56 2020 +0000

    Merge branch 'fix/169-precise-comparison' into 'master'
    
    - Relax condition on cumulateToLiquidityIndex()
    
    Closes #169
    
    See merge request aave-tech/protocol-v2!190

[33mcommit 47e80d7e4f5426733bab219efdbce70b4f5e51b2[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 15:57:03 2020 +0100

    Moved the mint action after the transfer

[33mcommit 73c1934adae4b17ff795887f5cd314003be87919[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 15:46:09 2020 +0100

    - Done less strict some other comparison with max of types

[33mcommit 977a25aee2ca84544ee93d19560dbdbed01077e9[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 15:41:28 2020 +0100

    - Relax condition on cumulateToLiquidityIndex()

[33mcommit e1f636ccd6ed9de0545bbe22ec22419a33a8753c[m
Merge: d5b7df3 51d3bd0
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 14:08:28 2020 +0000

    Merge branch 'fix/163-tokenization-docs' into 'master'
    
    - Reviewed documentation of protocol/tokenization
    
    Closes #163
    
    See merge request aave-tech/protocol-v2!187

[33mcommit 51d3bd0430194f622dc533d5ee7608e48bf69677[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 14:58:42 2020 +0100

    Updated comment

[33mcommit e16d33a4d79089e77e473b179db03117111a0904[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 14:57:52 2020 +0100

    Updated comment

[33mcommit 56aca3e156ae2d86ee4d92802f31a31df4d48c0f[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 14:57:06 2020 +0100

    Updated comment

[33mcommit fa11327b5919a85e6975cc1ee91ff711d5479b2c[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 13:09:49 2020 +0100

    - Added marketId and setter on LendingPoolAddressesProvider

[33mcommit d5b7df3070dd157536eff353b7b9c7258ba289a4[m
Merge: c5f7671 e418bcc
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Nov 26 11:00:17 2020 +0000

    Merge branch 'feat/165-repay-return' into 'master'
    
    - Added return values to repay() and withdraw(). Useful for integrators
    
    Closes #165
    
    See merge request aave-tech/protocol-v2!188

[33mcommit e418bcc01e5737c5daa929f6ab32dc63cf6cce43[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 11:02:26 2020 +0100

    - Added return of withdraw amount to withdraw()

[33mcommit 3206c5297fe9afd35bd6756aa5947047e19fa249[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 10:58:38 2020 +0100

    - Added return value to repay()

[33mcommit 997d29a0094b7ddc42ff86ffaca0be532c70ba61[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 10:51:43 2020 +0100

    - Added extra comment on IStableDebtToken

[33mcommit 3cbb122a2d9711ad631227a049804c35291a2730[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 10:38:50 2020 +0100

    - Fixed typo on IStableDebtToken

[33mcommit a27239129fd85ea66ec39a9dbb6cef3760224111[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 10:37:04 2020 +0100

    - Misc doc fixes

[33mcommit 3ef75e4018fd5ae891fc9a9e91c425e9995d42d1[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 10:29:53 2020 +0100

    - Fix redeem() = withdraw() on docs

[33mcommit 16d330c5f7a9f78885887f9b9cc0358df7baa74a[m
Merge: 7bcdce3 c5f7671
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 10:22:38 2020 +0100

    Merge branch 'master' into fix/164

[33mcommit 7bcdce30907ea8f6c54e330bde6eb7103b6ff9ad[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 26 10:21:18 2020 +0100

    - Reviewed tokenization documentation-wise
    - Moved interaces in protocol/tokenization to the general interfaces/ folder.

[33mcommit 3415204216dca7a5a3b0965f9f7d47a25a3db942[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Wed Nov 25 15:49:11 2020 -0300

    Update adapter docs

[33mcommit c5f767105746a70a7903cd4c1328155a2b6009f7[m
Merge: 7cabeca 92a731e
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Wed Nov 25 17:56:59 2020 +0000

    Merge branch 'fix/164' into 'master'
    
    Resolve "Review the libraries folder"
    
    Closes #164
    
    See merge request aave-tech/protocol-v2!186

[33mcommit bc969d926e27c6568d1967635529a482b0e5657d[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Wed Nov 25 14:55:46 2020 -0300

    Add swapAndRepay unit tests

[33mcommit 92a731ec2c536734924f5a55d3e6db0385b0c824[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Nov 25 18:33:49 2020 +0100

    Updated libraries

[33mcommit 513c7c09f1f5a48897677a7622075913e61dda98[m
Merge: 8289fa7 7cabeca
Author: pistiner <or@certora.com>
Date:   Wed Nov 25 16:20:07 2020 +0000

    Merge branch 'master' into 'certora/integrationStep2'
    
    # Conflicts:
    #   specs/harness/LendingPoolHarnessForVariableDebtToken.sol

[33mcommit 7cabecafe3604feeb1d744c18480948fcd47ac40[m
Merge: 85a79ed 00477d9
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Wed Nov 25 15:48:15 2020 +0000

    Merge branch 'fix/162' into 'master'
    
    Resolve "Review LendingPoolConfigurator"
    
    Closes #162
    
    See merge request aave-tech/protocol-v2!185

[33mcommit 00477d9334b28c3d7a11709772270d6f82a7589e[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Nov 25 16:17:08 2020 +0100

    - Added `using` to LendingPoolConfigurator

[33mcommit 7d96451ced33496d0f79d6c128d96d99ad38d214[m
Author: The3D <emilio@aave.com>
Date:   Wed Nov 25 15:31:27 2020 +0100

    Updated comment

[33mcommit c997a910c80772a2cd28129e87c7b4e6d260d8fd[m
Author: The3D <emilio@aave.com>
Date:   Wed Nov 25 15:31:03 2020 +0100

    Updated comment

[33mcommit 43d64c4509b2a9dff8fc2fa9186f245e6c9fd76e[m
Author: The3D <emilio@aave.com>
Date:   Wed Nov 25 15:27:17 2020 +0100

    Updated LendingPoolConfigurator

[33mcommit cdd922c9084858e7862f37bd4de62bca0e05f3af[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Wed Nov 25 11:07:33 2020 -0300

    Merge fixes

[33mcommit 71ea58f758706ba0146191ef56558ca972a8cef3[m
Merge: a496be8 85a79ed
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Wed Nov 25 10:46:01 2020 -0300

    Merge branch 'master' into feat/uniswap-adapter-flashloan
    
    # Conflicts:
    #       test/__setup.spec.ts

[33mcommit a496be8833cb8413b8cffed391f26f19a898d0e3[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Wed Nov 25 10:44:50 2020 -0300

    Refactor to avoid leftovers on _swapAndRepay with flash loan

[33mcommit 85a79edda074ed6346260761e35b03c9923457d1[m
Merge: e4bccae f929070
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Nov 25 12:59:08 2020 +0000

    Merge branch 'feat/161-docs-collateral-manager' into 'master'
    
    - Improved docs and naming on LendingPoolCollateralManager
    
    Closes #161
    
    See merge request aave-tech/protocol-v2!184

[33mcommit f9290705a00180ecf09744fbdea015af7fedddb8[m
Author: The3D <emilio@aave.com>
Date:   Wed Nov 25 13:45:52 2020 +0100

    Removed space in comments

[33mcommit ee11faa573ffa63ce55ea408e8e3c86d217c64f5[m
Author: The3D <emilio@aave.com>
Date:   Wed Nov 25 13:41:09 2020 +0100

    Updated comments, renamed variales

[33mcommit ba516a10d0c931035a2eb5bc9318ce4e42f445cb[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Nov 25 12:03:11 2020 +0100

    - Improved docs and naming on LendingPoolCollateralManager

[33mcommit e4bccaed917ba80c54f56a8d0cacff2ca03a4406[m
Author: The3D <emilio@aave.com>
Date:   Wed Nov 25 11:40:55 2020 +0100

    Fixed ILendingPool interface

[33mcommit 4d2d9e8459ca21b435d54a11ce88ca168ec1b92a[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Nov 24 14:06:58 2020 -0300

    Avoid leftovers on swapAndRepay

[33mcommit 0431f0dcbc3604f5f0ac03b442c2c54eab773e21[m
Merge: 16e67c0 1054dea
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Nov 24 16:17:29 2020 +0000

    Merge branch 'feat/160-structs-movement' into 'master'
    
    - Moved data types (structs and enum) to a DataTypes library, to simplify interfaces
    
    Closes #160
    
    See merge request aave-tech/protocol-v2!183

[33mcommit 1054dea632f758ac8c57d8f6c97f68d2ba751b0f[m
Author: The3D <emilio@aave.com>
Date:   Tue Nov 24 17:07:47 2020 +0100

    Removed reserveLogic import from WETHGateway

[33mcommit 126458c7aa5839e49fecc8545e25bb0a848ae11b[m
Author: The3D <emilio@aave.com>
Date:   Tue Nov 24 16:17:27 2020 +0100

    Updated ReserveMap and UserMap

[33mcommit 50e5ea907b9d3977b399ef78ef6ef06011ff1ca2[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Nov 24 12:11:13 2020 -0300

    Add first draft of swapAndRepay without using flash loans

[33mcommit 093e6925733b62b4ae4ae7fad528d15b6c9779af[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 24 15:11:02 2020 +0100

    - Unexcluded types/ on contracts libraries

[33mcommit 8289fa7adb4720008bdc9952ecece16314c9c421[m
Merge: 7c53ad8 42954bc
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Tue Nov 24 16:08:32 2020 +0200

    Merge branch 'certora/integrationStep2' of https://gitlab.com/aave-tech/protocol-v2 into certora/integrationStep2

[33mcommit 7c53ad84fa5109b26f488582d6561c9365d4cc1b[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Tue Nov 24 16:08:23 2020 +0200

    fixed syntax error

[33mcommit 5532ebdc8a8540cb0ad4354847dfdf0ade74377f[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 24 14:53:34 2020 +0100

    - Moved data types (structs and enum) to a DataTypes library, to simplify interfaces

[33mcommit 42954bca141b013df10ea7028dbf0ad23e795129[m
Author: pistiner <or@certora.com>
Date:   Tue Nov 24 13:48:09 2020 +0000

    Update .gitlab-ci.yml

[33mcommit bb52ba0659554b2eccdf60097d699f1b4b318bcd[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Tue Nov 24 15:46:09 2020 +0200

    Updated import paths

[33mcommit 70ab16b3f654f8921feea0a7d6b542e188a86295[m
Merge: 6dc710f 16e67c0
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Tue Nov 24 15:26:35 2020 +0200

    Merged master into certora/integrationStep2

[33mcommit 6dc710fd455d98817da6395ca1010d274dc6dbcd[m
Author: pistiner <or@certora.com>
Date:   Tue Nov 24 13:02:57 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 66bb895cec00398286caf27f21a2d243d3d4173c[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Tue Nov 24 14:53:09 2020 +0200

    Updated running script of UserConfiguration library.

[33mcommit 16e67c00c377cad71770cc74cf2c0364e042b712[m
Merge: b270a7a 3e6a9d3
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Nov 23 18:47:09 2020 +0000

    Merge branch 'feat/153-improve-docs' into 'master'
    
    - First iteration of documentation improvement of contracts
    
    See merge request aave-tech/protocol-v2!179

[33mcommit 3e6a9d359676e10fadede9f02661ec34b9fcd47c[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 23 19:26:25 2020 +0100

    Updated comment

[33mcommit e415c9cd4ddd1e5fb29d426607f9546a703dbf83[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 23 19:20:18 2020 +0100

    Updated comment

[33mcommit 10e9f17446e793b3d2993b3fd827ced0e7536220[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 23 19:17:19 2020 +0100

    Added interface for LendingPoolLiquidationManager

[33mcommit eecb0b4fef8ca14e2a5f0352b4de5ba9294af585[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 23 18:52:52 2020 +0100

    Replaced borrows with debt in comments and the InterestRateStrategy contract

[33mcommit 584a567635ad4817c7ef105304d62f25158eb120[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 23 18:44:13 2020 +0100

    Updated flashloan updateInterestRates

[33mcommit 9be311562a7fe519a00ecf6ce470e04b340f8486[m
Merge: 296f104 87d23c6
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Mon Nov 23 19:25:57 2020 +0200

    Merge branch 'certora/integrationStep2' of https://gitlab.com/aave-tech/protocol-v2 into certora/integrationStep2

[33mcommit 296f1046ad8717bf9eea5f076109f11450387ee1[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Mon Nov 23 19:25:47 2020 +0200

    Updated integirtyBalanceOfTotalSupplyOnBurn rule for StableDebtToken.

[33mcommit b270a7a229c0105b0afd6f3d6e6dc6b846a1ffb6[m
Merge: 13ce62e 68e3e20
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 23 16:12:51 2020 +0000

    Merge branch 'test-ci' into 'master'
    
    Run CI
    
    See merge request aave-tech/protocol-v2!178

[33mcommit 68e3e200e0ac2c9ff246cd00c3dafa989ce9adc8[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 23 16:47:05 2020 +0100

    Edit custom project name to use different network

[33mcommit becabfd726cec678453ab46916993b92f2771afc[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 23 16:39:22 2020 +0100

    rollback tag

[33mcommit 651acd12c28124b8c10e6a02f2ddc5c49fbfe5e3[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 23 16:36:55 2020 +0100

    Run CI

[33mcommit 4629dcd1940be355ae318cc07367219ce5a82ed5[m
Merge: e2d1a27 13ce62e
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 23 15:57:41 2020 +0100

    Merge branch 'master' into feat/153-improve-docs

[33mcommit e2d1a274bc7af458e1644917100366312766cdd5[m
Merge: 0bca8c6 8ccb926
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 23 15:56:55 2020 +0100

    Merge branch 'master' into feat/153-improve-docs

[33mcommit 13ce62ebe4cdfe0be82603b44908dd8090461599[m
Merge: 8ccb926 6e7567c
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 23 14:53:28 2020 +0000

    Merge branch '155-use-the-delegationawareatoken-for-the-uni-deployment' into 'master'
    
    Support custom aToken implementation via ReserveConfig.ATokenImpl
    
    Closes #155
    
    See merge request aave-tech/protocol-v2!174

[33mcommit 6e7567c84206e41182f71ba26f391bc030a7db3e[m
Merge: 55cf8f9 8ccb926
Author: David Racero <4266635-kartojal@users.noreply.gitlab.com>
Date:   Mon Nov 23 14:24:25 2020 +0000

    Merge branch 'master' into '155-use-the-delegationawareatoken-for-the-uni-deployment'
    
    # Conflicts:
    #   tasks/full/5_initialize.ts

[33mcommit 8ccb92670b0542962f0b329c66f1fc6723b35589[m
Merge: 38a2879 98ac879
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 23 14:06:28 2020 +0000

    Merge branch '154-updates-for-walletbalalanceprovider-contract' into 'master'
    
    Resolve "Updates for WalletBalalanceProvider contract"
    
    Closes #154
    
    See merge request aave-tech/protocol-v2!175

[33mcommit 98ac8791812ab5dc667ff0fbcf1f7e3fce808faa[m
Merge: d5ff8de 38a2879
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 23 12:04:59 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 154-updates-for-walletbalalanceprovider-contract

[33mcommit 55cf8f9b0ec5f11019052f5e6e24a8583819b6d1[m
Merge: 4034c75 38a2879
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 23 11:43:40 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 155-use-the-delegationawareatoken-for-the-uni-deployment

[33mcommit 38a2879c5970483213e33469ff5039ffe364339c[m
Merge: 0ccfcd2 648cba1
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 23 10:41:11 2020 +0000

    Merge branch '158-move-protocol-contracts-to-protocol-directory' into 'master'
    
    Resolve "Move protocol contracts to protocol directory"
    
    Closes #158
    
    See merge request aave-tech/protocol-v2!177

[33mcommit 648cba1cd28adeb7627cb1c8aa5eaee4d2ff58b9[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 23 11:33:19 2020 +0100

    Fixes npm ci error.

[33mcommit 6532fd076575109af1172e266169596234f9e786[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 23 11:28:57 2020 +0100

    Move protocol contracts inside own directory to scope audits. Update library hash at contracts-deployments.ts:165 due libraries paths has changed.

[33mcommit 0bca8c65198a1c3bd1c5f1ca9fe40e041f822139[m
Merge: f98335c 0ccfcd2
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 23 11:15:31 2020 +0100

    Merge branch 'master' into feat/153-improve-docs

[33mcommit f98335cb68e95003b114d31b20218e903c1b5b58[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 23 10:58:04 2020 +0100

    - Improved docs on LendingPool and interface

[33mcommit 87d23c65ea2b4b21bf24ef74eca0a1773edf97dd[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 22 21:24:26 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 9e07c03f335d3a16801745bd15b9061bccc966cd[m
Merge: f90e532 fa0d49e
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Sun Nov 22 23:20:17 2020 +0200

    Merge branch 'certora/integrationStep2' of https://gitlab.com/aave-tech/protocol-v2 into certora/integrationStep2

[33mcommit f90e53293d7a9fabc985527280aa08bc84657133[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Sun Nov 22 23:19:56 2020 +0200

    Updated StableDebtToken spec

[33mcommit fa0d49e280eb36dd7a924f940ca44bdf119a1120[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 22 20:43:01 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 219d765f970135079fab6129ab89106c01ea4f19[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Sun Nov 22 22:39:06 2020 +0200

    Updated running script of VariableDebtToken

[33mcommit 21edab306b734e8a27d5bd8db72a6eadc30ad6e3[m
Merge: dd0e306 0ccfcd2
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Sun Nov 22 22:21:03 2020 +0200

    Merge branch 'master' of https://gitlab.com/aave-tech/protocol-v2 into certora/integrationStep2

[33mcommit dd0e3064e3efdcbaa0a08cc6b4b89d90ed5a7619[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Sun Nov 22 22:20:43 2020 +0200

    Updates to the VariableDebtToken spec

[33mcommit 43d05c2bdf846fef7c8f4145988511a36fea3549[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Nov 20 15:53:50 2020 -0300

    Refactor repayAdapter to flash loan the debt asset instead of the collateral

[33mcommit 0ccfcd2b2ce5ccbabb0421f6f3ff5e53f84685eb[m
Merge: 886f2fb f1778b8
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 20 16:25:35 2020 +0000

    Merge branch 'fix/157' into 'master'
    
    Resolve "Upgrade to solidity 0.6.12"
    
    Closes #157
    
    See merge request aave-tech/protocol-v2!176

[33mcommit d5ff8ded62d5006d8b97d27934b059ae12e3b8e2[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 20 16:01:00 2020 +0100

    Test envs

[33mcommit 84b1c1a9d9e09e3cb512db926829e67bf2287847[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 20 15:59:02 2020 +0100

    Missing run

[33mcommit 3856104f674dac9f1bbcf3e50d1736b293f67aa5[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 20 15:44:43 2020 +0100

    Added env variables to docker-compose.test.yml

[33mcommit b48b50208a160ab3839d5ed9117d5335c8e21c39[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Nov 20 09:06:28 2020 -0300

    Support using all the collateral for a debt repay

[33mcommit 4034c755361143388c752961215870664a36269b[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 20 12:11:57 2020 +0100

    Support custom aToken deployments

[33mcommit f1778b88d4699dda569b7f0386ab42d8dca61373[m
Author: The3D <emilio@aave.com>
Date:   Fri Nov 20 11:45:20 2020 +0100

    Removed the ^ on solidity version

[33mcommit 8c03180f89eea25e98356b80d8187cb0f12f29cd[m
Author: The3D <emilio@aave.com>
Date:   Fri Nov 20 11:41:58 2020 +0100

    Updated solidity version

[33mcommit 2231452bacd961b0c2e760438ca69d3c5042d123[m
Merge: e04c709 886f2fb
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 20 11:41:32 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 155-use-the-delegationawareatoken-for-the-uni-deployment

[33mcommit 27b05921d071dd0aebd31c2ebcbb3e868f7b937d[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 20 11:40:01 2020 +0100

    Fix CI

[33mcommit 92168f500b675ed5227b6b98bf53ec3886fd5e9d[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 20 11:32:17 2020 +0100

    Fixes missing param at deployDefaultReserveInterestRateStrategy. Update WalletBalanceProvider to add provider argument. Minor fixes migration script.

[33mcommit e04c7092fc3e7ca1b45c1542214755be009f6b7f[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 20 10:57:52 2020 +0100

    Change wrong ID from deployment scripts

[33mcommit 886f2fbc70489103bfbb5d6e18ba12e0263e56b6[m
Merge: 56d25e8 151146c
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 20 09:18:49 2020 +0000

    Merge branch 'fix/156' into 'master'
    
    Resolve "Add the OTIMAL_UTILIZATION_RATE as an immutable in DefaultInterestRateStrategy"
    
    Closes #156
    
    See merge request aave-tech/protocol-v2!173

[33mcommit 151146c95bd9872662837feb32284f50bf65852f[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 20 10:14:37 2020 +0100

    removed bigNumber import

[33mcommit 75c7d52031a67fd04602b26735b6856bbc9e1a45[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 20 10:13:14 2020 +0100

    removed hardhat console

[33mcommit 8a303c61950130a1a0b9aaae4a767b902aa00840[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Thu Nov 19 16:39:00 2020 -0300

    Refactor repayMode in repayAdapter

[33mcommit 8aa46e9c4f519f1bc990ed96298cb6adb44001ec[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Nov 19 19:24:41 2020 +0100

    Fixes tests

[33mcommit d5f0e9ebf94ff24c9e16b0cecd33fef424696a6a[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Nov 19 18:11:53 2020 +0100

    Updated migration scripts

[33mcommit 39dcb51feeacab467b78e1021e6d638b23940ed3[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 19 17:47:56 2020 +0100

    Add missing symbol in name.

[33mcommit 1c26eeef877f3b7d3f6044f1da96d2577657fcaf[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 19 17:46:23 2020 +0100

    Add UNI aDelegatedToken

[33mcommit 3f5822f5f63be31a98110e9a4dd3e5ec7224f8b0[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Nov 19 17:17:11 2020 +0100

    Updated DefaultInterestRateStrategy

[33mcommit 0c6ec03cec0de4cbe6b6320da98c3c2743dc19b8[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 19 14:48:15 2020 +0100

    - Reviewed comments on DefaultReserveInterestRateStrategy and interface.

[33mcommit 97aa76b13cc9962f39f4a812518ee6880c412f60[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 19 14:23:46 2020 +0100

    - Moved StringLib to deployments/

[33mcommit a5f9332234599f28dd2acb45b980eba7d4601556[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 19 14:21:36 2020 +0100

    - Fixed comments on LendingPoolAddressesProviderRegistry and removed useless getter.

[33mcommit 9478381992caaf2c95775997245f6bb58c54762b[m
Merge: 2e70cc6 56d25e8
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Thu Nov 19 09:32:52 2020 -0300

    Merge branch 'master' into feat/uniswap-adapter-flashloan
    
    # Conflicts:
    #       helpers/contracts-helpers.ts
    #       test/helpers/make-suite.ts

[33mcommit 4192a5d992e1f2aa405261b1f3e661e335ff8530[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 19 12:52:34 2020 +0100

    - Improved docs of LendingPoolAddressesProvider

[33mcommit 56d25e81cb0fdfcac785d669d3577b1ef2d9286e[m
Merge: 5ae2778 94ce7c6
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Nov 19 10:49:56 2020 +0000

    Merge branch 'fix/152-borrow-comment' into 'master'
    
    Fixed innacuracy on borrow() comments.
    
    Closes #152
    
    See merge request aave-tech/protocol-v2!172

[33mcommit 94ce7c649fcf944ca67d4042d7662298e7e45dfa[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 19 10:46:10 2020 +0100

    - Fixed innacuracy on borrow() comments.

[33mcommit 5ae277841fde4c1f361b4c2b967b368c58c5d3e4[m
Merge: 200c02e 3e005b4
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 19 09:22:30 2020 +0000

    Merge branch '151-review-aave-reserves-and-oracles-config' into 'master'
    
    Review Aave reserves config, add permit domain test
    
    Closes #151
    
    See merge request aave-tech/protocol-v2!171

[33mcommit 3e005b4aaa08f9f580e0cc3fe761564e5e7a5480[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 18 19:22:30 2020 +0100

    Fix CI ethereumjs

[33mcommit 53d92ccfe42f017a5ae989fbbaa7e93da14c3501[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 18 19:18:02 2020 +0100

    Added permit domain check test. Update typechain and typescript to support new ethers 5 generated typings. Updated ethers to support _TypedDataEncoder for domain hash.

[33mcommit 61b935ce41f9a40d2753dd3d1e94ffa90b4d9b58[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 18 10:35:42 2020 +0100

    Fixes dev tasks

[33mcommit edac705301d91147a34a546ddc24f7aee7e0701a[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 18 10:33:44 2020 +0100

    Check Reserves and Oracles config. Removed unneded config related with old uniswap v1.

[33mcommit 2e70cc628841c586d63ff2a51c5cfd0a2a6aba07[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Nov 17 13:31:05 2020 -0300

    remove .only in tests

[33mcommit 092f9c983b0ddd22082303b4faad9cef91731d43[m
Merge: d0d0e86 200c02e
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Nov 17 13:21:41 2020 -0300

    Merge branch 'master' into feat/uniswap-adapter-flashloan
    
    # Conflicts:
    #       helpers/contracts-getters.ts

[33mcommit 200c02e081441160879db3a28ee46bfc361746d2[m
Merge: d9a66d3 12d1717
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 17 11:58:01 2020 +0000

    Merge branch '140-setup-mainnet-fork-simulation-environment-based-on-tenderly' into 'master'
    
    Add Mainnet fork, deployment check-list, add Tenderly integration
    
    Closes #140
    
    See merge request aave-tech/protocol-v2!160

[33mcommit 12d17179d68462f8d01d3b6760f7794119bf6dfb[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 17 10:24:24 2020 +0100

    Renamed ChainlinkProxyPriceProvider to AaveOracle

[33mcommit f33324a09cbf38dfe515beafb6baa43404a38b58[m
Merge: b275fed e09e660
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 17 09:34:22 2020 +0100

    Merge branch '140-setup-mainnet-fork-simulation-environment-based-on-tenderly' of gitlab.com:aave-tech/protocol-v2 into 140-setup-mainnet-fork-simulation-environment-based-on-tenderly

[33mcommit b275fedfe83ebfcd77eabcfa9785661a2e03161f[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 17 09:33:45 2020 +0100

    Remove Uniswap V1 config and scripts. Renamed config to markets.

[33mcommit e09e660c8514053884df97887398bc756c22dee4[m
Author: David Racero <4266635-kartojal@users.noreply.gitlab.com>
Date:   Tue Nov 17 07:18:10 2020 +0000

    Update README.md

[33mcommit 27365697ac4eda6ac1f97c79d6226146719fad60[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 16 19:22:22 2020 +0100

    Added mainnet check list. Remove deployed contracts. Update README.md

[33mcommit 0d4068205467ec8f21a393c0bf07313563fcead0[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 16 16:08:07 2020 +0100

    Added initial README. Digging into Tenderly. Added initial mainnet fork with buidler.

[33mcommit d0ea8d2e32dd94b65669babd96eaf9b755992b96[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 16 11:09:23 2020 +0100

    Added buidler mainnent fork

[33mcommit 84053c7b1df624fb068b7718f3599a7b64c3122c[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 16 10:19:14 2020 +0100

    Added latest update from Tenderly

[33mcommit d9a66d31675d6e53f7bd33d611721d3e00477f9e[m
Merge: cfc002d b66253b
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 13 16:00:36 2020 +0000

    Merge branch 'fix/145-2' into 'master'
    
    Resolve "Improve input parameters validation on LendingPoolConfigurator setters"
    
    Closes #145
    
    See merge request aave-tech/protocol-v2!170

[33mcommit d0d0e869d0d734238d7c90023d8a876f9df1e390[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Nov 13 12:30:14 2020 -0300

    Fix flash loan fee usage in _getAmountsIn

[33mcommit 101c77578975825b3241edde4787394c688365a6[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Nov 13 12:28:57 2020 -0300

    Avoid param override in repay adapter

[33mcommit 4c693d1947268bfd9b9bf714948c0c288d117e57[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Nov 13 12:27:18 2020 -0300

    Update amountToSwap calc in liquidity swap adapter

[33mcommit b66253bfe99374f17d16c0d4e0cd0d8ab5c6a77e[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 13 15:48:38 2020 +0100

    Removed separate setters

[33mcommit d2739e3a9c7970c5e1100b11c90e3ca804b9473e[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 12 14:43:14 2020 +0100

    Add the Tenderly provider at set-bre task

[33mcommit 588a0c8da0d34d791d69254fa307c7e4bec9a8c4[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 12 14:41:08 2020 +0100

    Add provider. Add transaction link to task.

[33mcommit cfc002dcd161e05029d0932b587cb20e370f097c[m
Merge: 00571bc f32ac70
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Nov 12 13:38:19 2020 +0000

    Merge branch 'fix/147-148-uint128max' into 'master'
    
    - Changed `1 << 128` to `type(uint128).max`
    
    Closes #148 and #147
    
    See merge request aave-tech/protocol-v2!169

[33mcommit d1c6943cd3c766d8e712eb6eb4bc8debe3947c90[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 12 14:12:26 2020 +0100

    Initial implementation of Tenderly plugin

[33mcommit f32ac702ecf9e11c3dcdfed7587e4379ea70ec4c[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 12 13:54:23 2020 +0100

    - Refactoring on some Errors

[33mcommit 693576f8530dd4c39cf0fe84014db536fd339987[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 12 12:50:35 2020 +0100

    - Replaced hardcoded error messages on ReserveLogic.

[33mcommit 0f086a8a27d721a64c77e6194030438a37829366[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 12 10:29:00 2020 +0100

    - Changed `1 << 128` to `type(uint128).max`

[33mcommit 00571bced7d9c5c44e1fbb7fa5484d543151bfbd[m
Merge: 4fb10f8 982fb46
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Nov 12 09:26:46 2020 +0000

    Merge branch 'fix/146-reordering' into 'master'
    
    - Reorder on LiquidationCallLocalVars for better packing.
    
    Closes #146
    
    See merge request aave-tech/protocol-v2!168

[33mcommit 982fb46336db02d4549c4ad40b10f2474e8e9861[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 12 10:16:10 2020 +0100

    - Reorder on LiquidationCallLocalVars for better packing.

[33mcommit 5ad4182508b4abdd3f10e4b8e4e3ba8456736716[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Nov 12 10:54:47 2020 +0200

    Changes in /LendingPoolHarnessForVariableDebtToken

[33mcommit 4fb10f8b100714ac8b7357c19f413296d80bc032[m
Merge: 8ae705a 996c162
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Nov 12 08:52:52 2020 +0000

    Merge branch 'fix/144-remove-public' into 'master'
    
    - Changed CONFIGURATOR_REVISION visibility to internal
    
    Closes #144
    
    See merge request aave-tech/protocol-v2!167

[33mcommit 996c16237cf9ad54f880d09d8799601341ad4927[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 12 09:48:03 2020 +0100

    - Changed CONFIGURATOR_REVISION visibility to internal

[33mcommit 81f566bbc4128b815eb734f50a03dc97cbefc366[m
Merge: e0be3a3 8ae705a
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Nov 12 10:44:20 2020 +0200

    Merged origin/master into certora/integrationStep2

[33mcommit e0be3a316339e36ac055d8a494f420d96682da41[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Nov 12 10:35:40 2020 +0200

    Changes in harness of VariableDebtToken

[33mcommit 23c5d9af29f802e56db96d60165733285f7dec1b[m
Merge: 1bfab49 8ae705a
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 12 09:11:24 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 140-setup-mainnet-fork-simulation-environment-based-on-tenderly

[33mcommit 1bfab4955743ce3d6b1d5a55366d4880f65c42af[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 12 09:11:17 2020 +0100

    Initial setup. Add Alchemy key

[33mcommit 8ae705a769bd95059c556933ee2e414cfed66aff[m
Merge: cdfd16b 895b6b2
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Nov 11 17:16:46 2020 +0000

    Merge branch 'fix/usdt-borrow' into 'master'
    
    Enable USDT for borrowing
    
    See merge request aave-tech/protocol-v2!166

[33mcommit 895b6b26f4727a8d69c8b44046178305b55d6e5a[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 11 18:12:05 2020 +0100

    Enable USDT for borrowing

[33mcommit cdfd16b626060b1f9fd8070a5ce677363a2848f1[m
Merge: c86f6d2 82268e6
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Nov 11 15:08:19 2020 +0000

    Merge branch 'fix/143-remove-receive' into 'master'
    
    - Removed not needed receive() on LendingPool
    
    Closes #143
    
    See merge request aave-tech/protocol-v2!164

[33mcommit 82268e6a5e59b1ca0c3b21e0605f22802dabb781[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Nov 11 16:05:44 2020 +0100

    - Removed not needed receive() on LendingPool

[33mcommit c86f6d25d93d35622dc53730f5c6c6374e8fb557[m
Merge: 9fdd9f1 0ae8741
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Nov 11 15:03:04 2020 +0000

    Merge branch 'fix-borrow-rep-susd' into 'master'
    
    Allow sUSD and REP to be borrowed
    
    See merge request aave-tech/protocol-v2!163

[33mcommit 0ae87413baa26d005d4277cb70b7520996f37cf5[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 11 16:00:12 2020 +0100

    Allow sUSD and REP to be borrowed

[33mcommit 9fdd9f11daff8c77182a707f79e85be870935f8d[m
Merge: 1ea047a 81c0fbc
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Wed Nov 11 14:58:07 2020 +0000

    Merge branch 'fix/150' into 'master'
    
    Resolve "Fix calculation on burning of stableDebt"
    
    Closes #150
    
    See merge request aave-tech/protocol-v2!161

[33mcommit 1ea047a939e8ba243033e71b5bc8877f026c4b2c[m
Merge: c01e77b 9b04f21
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Nov 11 14:58:03 2020 +0000

    Merge branch 'fix/142-liquidationCall-require' into 'master'
    
    - Changed to require on result on liquidationCall()
    
    Closes #142
    
    See merge request aave-tech/protocol-v2!162

[33mcommit 81c0fbcb02ca9181ecad0aa744fdc5d67ac313ee[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Nov 11 15:54:08 2020 +0100

    Fixes stable borrow debt

[33mcommit 9b04f21ae0154551a58456424cbde4969254221d[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Nov 11 15:52:42 2020 +0100

    - Changed to require on result on liquidationCall()

[33mcommit c01e77b55b94b2f7464c53738783a16e395904eb[m
Merge: f73db4d 5726bf7
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Nov 11 12:09:34 2020 +0000

    Merge branch 'rollback-susd-decimals' into 'master'
    
    Use new sUSD testnet token with 18 decimals
    
    See merge request aave-tech/protocol-v2!159

[33mcommit 5726bf7abc63de42072a58340babd0807d9aecf9[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 11 13:04:05 2020 +0100

    Kovan release

[33mcommit 0b164d20499fb1aaab8aec5609f63d1544c28762[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 11 12:43:31 2020 +0100

    Add sUSD testnet token with 18 decimals

[33mcommit de20c0e6ec7ca8bf12d4e04cb32d28a585f3da4a[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 11 12:01:15 2020 +0100

    Rollback sUSD decimals to 18

[33mcommit f73db4dbd992a2bfe707b763d654ce97e932b419[m
Merge: 501bbe3 b4709de
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Wed Nov 11 10:29:17 2020 +0000

    Merge branch 'feat/token-verification-loop-and-fix-lending-rate-oracle-task' into 'master'
    
    Fixes task related with LendingOracle. Add token verification task.
    
    See merge request aave-tech/protocol-v2!157

[33mcommit b4709de5d3c341f12136667776accc273b85b160[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 11 11:22:56 2020 +0100

    Fix decimals for SUSD

[33mcommit 5e4ea2bb5b0a1e4fdda594378c5f5f55e5e69e1f[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Nov 11 11:19:59 2020 +0100

    Added gitattributes

[33mcommit 501bbe3be3fcc89a728bae605374d0276ead85f2[m
Merge: 1be6b5f 2d8f52b
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Wed Nov 11 09:43:42 2020 +0000

    Merge branch 'kovan-release-v2' into 'master'
    
    Kovan release
    
    See merge request aave-tech/protocol-v2!156

[33mcommit cf32c1f84f0af8d771327af65d0f899443d82b97[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 10 21:16:31 2020 +0100

    Fixes task related with LendingOracle. Add token verification task.

[33mcommit 37a2f14fcadc35adecaf7163f155f81c8cbef359[m
Merge: a7115f0 1be6b5f
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Nov 10 16:28:01 2020 -0300

    Merge branch 'master' into feat/uniswap-adapter-flashloan

[33mcommit 2d8f52b86cc41477518a4e0e2a6cf1590a10bc22[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 10 19:18:36 2020 +0100

    Kovan deployment release

[33mcommit cb5a0aa80d8a934eb326a6ab1b788543d70aed8f[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 10 18:56:31 2020 +0100

    Kovan release

[33mcommit 1be6b5fbc94a803fb04984e5babb02ee8cd278e9[m
Merge: 18446c7 80997ea
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Tue Nov 10 17:33:03 2020 +0000

    Merge branch 'fix/135' into 'master'
    
    Resolve "Add a validation that liq threshold <= 100%-liq bonus on configureReserveAsCollateral()"
    
    Closes #135
    
    See merge request aave-tech/protocol-v2!155

[33mcommit 80997ea965f3ac564e3a16040fe1574b75b68700[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 18:16:27 2020 +0100

    Added checks on liquidationBonus

[33mcommit 18446c7ecd6aee6de084dd311051f2c784daeb68[m
Merge: 3fc812e 2d5e651
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 17:05:11 2020 +0000

    Merge branch '134-add-check-on-initreserve-that-asset-is-a-valid-contract' into 'master'
    
    Resolve "Add check on initReserve() that asset is a valid contract"
    
    Closes #134
    
    See merge request aave-tech/protocol-v2!153

[33mcommit 2d5e65195903be462b7e11cac093e465bc079682[m
Merge: 743eb6e 3fc812e
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 10 17:52:23 2020 +0100

    Fix conflicts

[33mcommit 743eb6ec2954a21c6eb287d02ef1906500d2a27d[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 10 17:50:13 2020 +0100

    Added isContract to check asset at LendingPool.initResetve function

[33mcommit 3fc812e7fb4fdc383271c1ce34bfe5b58d7a1c83[m
Merge: ec600e5 2df0598
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:48:30 2020 +0000

    Merge branch 'fix/130' into 'master'
    
    Resolve "Add a modifier for _whenNotPaused()"
    
    Closes #130
    
    See merge request aave-tech/protocol-v2!152

[33mcommit ec600e56e71d16fa0dd08956679b1e581aea5d65[m
Merge: 74ab2fd 1270723
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:41:13 2020 +0000

    Merge branch 'fix/131' into 'master'
    
    Resolve "Change _reservesCount++; with _reservesCount=reservesCount+1; in addToReservesList()"
    
    Closes #131
    
    See merge request aave-tech/protocol-v2!149

[33mcommit 2df0598e4bfa6ce9bb989e685954a9712c115476[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 17:38:06 2020 +0100

    Added modifiers

[33mcommit 74ab2fd126b515d55fc09c05ee8079240fa5c5e3[m
Merge: fe1eab6 6460dd9
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:29:11 2020 +0000

    Merge branch 'fix/133' into 'master'
    
    Resolve "Add validation on UserConfiguration that the reserveIndex is < 128"
    
    Closes #133
    
    See merge request aave-tech/protocol-v2!151

[33mcommit 12707238f8c9ca83dcfe5dae550c6d2be808337a[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 17:28:43 2020 +0100

    Fixes #131

[33mcommit fe1eab670a034c2a8d6fb819eb3a59594206e045[m
Merge: 751ecf6 f125eeb
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:23:16 2020 +0000

    Merge branch 'fix/137' into 'master'
    
    Resolve "Remove conditions that check if liquidityIndex and variableBorrowIndex are == 0 in initReserve"
    
    Closes #137
    
    See merge request aave-tech/protocol-v2!150

[33mcommit 6460dd9e034bf74b882f9f0e02a46ba1282a4d7e[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 17:21:59 2020 +0100

    fixes #133

[33mcommit f125eeb0c5378e5d0da31bde9d01707b5ec62014[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 17:15:36 2020 +0100

    Removed unneeded conditions

[33mcommit 751ecf6fa32426d267bc03b1b05f2fc3023d4e93[m
Merge: 690d876 92e2eca
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:12:31 2020 +0000

    Merge branch 'fix/136' into 'master'
    
    Resolve "Fix wrong comments"
    
    Closes #136
    
    See merge request aave-tech/protocol-v2!148

[33mcommit 92e2ecab5198dda4dd4fedd98e158af957918fd4[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:57:35 2020 +0100

    Added more detailed comments on configureReserveAsCollateral

[33mcommit fed8c7988464a0febb711941392c6e32d07ae998[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:52:34 2020 +0100

    Fixed comment in ReserveLogic

[33mcommit 643ed2f9bcfaee21a8c92e258aa8b0d3080b37ed[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:52:02 2020 +0100

    Fixed comment in ReserveConfiguration

[33mcommit 690d876047a6bf82f8d15d9fb3d8c0dc33390aa5[m
Merge: 084dfd1 57ed9ef
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 10 15:45:14 2020 +0000

    Merge branch 'fix/126' into 'master'
    
    Resolve "Add check on reserve active for rebalanceBorrowRate and withdraw"
    
    Closes #126
    
    See merge request aave-tech/protocol-v2!145

[33mcommit 57ed9efd58260c11f133c61c684a441b2a4d2aed[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:33:00 2020 +0100

    Validated the user balance before isActive

[33mcommit 31cbe9127ec118d13daaba43c4d568cce723b031[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:29:43 2020 +0100

    Fixed validateWithdraw

[33mcommit 084dfd1c9aa6f5e8e1d54738bf2bf7a31f59b79e[m
Merge: c8e59ca a3ee5d2
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 10 15:25:18 2020 +0000

    Merge branch 'fix/127' into 'master'
    
    Resolve "Add setIsUsingAsCollateral(false) in liquidation if the whole user collateral is being liquidated"
    
    Closes #127
    
    See merge request aave-tech/protocol-v2!147

[33mcommit a3ee5d2ce695f3fb668c9622c5e16facc3ca8424[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:18:31 2020 +0100

    Added tracking of the usage as collateral to the liquidationCall

[33mcommit f87873a6dea9f94ae737536bdae82a51d5fc1edb[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 16:07:13 2020 +0100

    Added natspec, isActive check

[33mcommit c8e59ca95056d96910958164ef071e974c6427d7[m
Merge: 954df03 727bc12
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 14:59:20 2020 +0000

    Merge branch 'fix/139-transferOnLiquidation-event' into 'master'
    
    - Added Transfer event on transferOnLiquidation
    
    Closes #139
    
    See merge request aave-tech/protocol-v2!146

[33mcommit d66959f4ffc8eb24a212c4d0607604ba4bad97ec[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 15:57:49 2020 +0100

    Refactored validation logic of rebalanceStableBorrowRate

[33mcommit 954df031242920afa420411cdb49a35319059710[m
Merge: 84b34d2 ce76335
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 10 14:43:31 2020 +0000

    Merge branch 'fix/124' into 'master'
    
    Resolve "Split the setAddress() function in LendingPoolAddressesProvider between proxy and non proxy"
    
    Closes #124
    
    See merge request aave-tech/protocol-v2!142

[33mcommit 673b8f22c4d38b68cd268f480195660e7c6b6812[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 15:42:03 2020 +0100

    Fixed validation of isActive in validateWithdraw

[33mcommit 727bc12d8007cb5075aef1342caa1532468f9090[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 10 15:40:49 2020 +0100

    - Added Transfer event on transferOnLiquidation

[33mcommit a7115f019e34b098786953a91b0e70f09736034e[m
Merge: b0d9dbe 84b34d2
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Nov 10 11:40:25 2020 -0300

    Merge branch 'master' into feat/uniswap-adapter-flashloan
    
    # Conflicts:
    #       helpers/contracts-getters.ts
    #       helpers/types.ts

[33mcommit ce76335078c5f7283cab1d116b84adc328de6e8d[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 15:38:43 2020 +0100

    Fixes #124

[33mcommit b0d9dbe2a7c48c4fd7d31bbd2542e5236ba80f25[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Nov 10 11:28:19 2020 -0300

    code improvements

[33mcommit 84b34d2c1afeb567081eef541118dfb0a08e1792[m
Merge: 3fc2610 4df4841
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 10 14:24:57 2020 +0000

    Merge branch '138-rename-aaveprotocoltesthelpers-in-aaveprotocoldataprovider' into 'master'
    
    Resolve "Rename AaveProtocolTestHelpers in AaveProtocolDataProvider"
    
    Closes #138
    
    See merge request aave-tech/protocol-v2!144

[33mcommit 4df484176768659cf1473f1c058bfbd7b9658ccf[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 10 15:19:47 2020 +0100

    Rename AaveProtocolTestHelpers to AaveProtocolDataProvider. Add task to deploy AaveProtocolDataProvider.

[33mcommit 3fc261037a3aab7c1dd9e6f33d95ddf7d867e3fc[m
Merge: 4a83674 c81047c
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 10 13:59:16 2020 +0000

    Merge branch 'fix/123' into 'master'
    
    Resolve "Add check that amount != 0 in validateBorrow()"
    
    Closes #123
    
    See merge request aave-tech/protocol-v2!141

[33mcommit 4a836740d06bf6de9debff8fcd1549bc64b36b5b[m
Merge: ce62734 0d0ef98
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 10 13:58:38 2020 +0000

    Merge branch 'feat/hardhat-etherscan-dependency-graph' into 'master'
    
    Upload source dependency graph instead of all source code while etherscan verification
    
    See merge request aave-tech/protocol-v2!137

[33mcommit c81047ca93bcd93e74ef768aa928e83d79ba87fb[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 14:57:09 2020 +0100

    Fixes #123

[33mcommit 0d0ef98fe60089b4331e70fbbf97b5d75523f3af[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 10 14:53:16 2020 +0100

    Added deployment addresses. Rollback atoken deployer.

[33mcommit cf9c8855c33e72ceba2442c22dcf9130061a4616[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Nov 10 10:38:24 2020 -0300

    Pull the correct amount of atokens from user to avoid leftovers in repay adapter

[33mcommit ce3db28503672bb3adc0532a02a5b536575fa510[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 10 14:18:48 2020 +0100

    Added tokenization verifications

[33mcommit ee1e20568b4d62c20ec3eb2cb083967d75e9f277[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 14:11:01 2020 +0100

    Added check

[33mcommit ce62734786b575a3fe60df61faf960007ec7f36f[m
Merge: d82c86b d9fa615
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 10 13:03:48 2020 +0000

    Merge branch '122-remove-setreservedecimals-from-lendingpoolconfiguration' into 'master'
    
    Resolve "Remove setReserveDecimals() from lendingPoolConfigurator"
    
    Closes #122
    
    See merge request aave-tech/protocol-v2!140

[33mcommit d9fa61539ab82928be5d75492cfc9fa51efbbbb7[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 13:59:08 2020 +0100

    Removed invalid tests

[33mcommit d82c86bf261de2d61b31f6898c764b7c7bffa57d[m
Merge: e907f91 0c8efc2
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 10 12:49:59 2020 +0000

    Merge branch 'fix/121' into 'master'
    
    Resolve "Fix call to balanceDecreaseAllowed in setUserUseReserveAsCollateral"
    
    Closes #121
    
    See merge request aave-tech/protocol-v2!139

[33mcommit bfa26634a61347391f5f1251e837c18e2d381c0e[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 13:47:31 2020 +0100

    Removed setDecimals

[33mcommit 0c8efc2261ef9c69524b99816f27c0f3bd1f53eb[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 13:45:08 2020 +0100

    Added negative test on setUsageAsCollateral(), clearer require condition

[33mcommit 6eb19a2d6683c23a82cd2c368a8c66e2e01c73ff[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 10 13:11:33 2020 +0100

    Move verification to a separate task and run after deployment. Speed up verification via more logic to prevent too many retries.

[33mcommit e907f91742f527cf29846ff9174f31c98d0dc0b0[m
Merge: ef98aad 6a3695c
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Nov 10 09:13:31 2020 +0000

    Merge branch 'fix/wb-provider-eth-mock' into 'master'
    
    Final fix for ETH balance calculations in getUserWalletBalances
    
    See merge request aave-tech/protocol-v2!138

[33mcommit 6a3695c5b7ceab461d02e122eac1d83432853c2f[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Nov 10 10:33:53 2020 +0200

    final fix for ETH balance calculations in getUserWalletBalances

[33mcommit 6e9defe14c111a02abc5056d9c2f1c8fddb6b412[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Mon Nov 9 16:53:03 2020 -0300

    Add repayAllDebt flag to repay the whole debt with collateral

[33mcommit 8389410819cde36842453f3462f0aef6fc3cb400[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 9 19:28:13 2020 +0100

    Use latest package

[33mcommit 4fb43f7aff489aa170ca380a894157467a69aff2[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Mon Nov 9 15:27:18 2020 -0300

    Remove not used batch capabilities on repay adapter

[33mcommit b3870cc107cc24a889fe46f4576acf478d1c884e[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 9 18:55:09 2020 +0100

    Use fallback verification if related sources causes Solidity bug.

[33mcommit 45f882b401c7b1a55391c914d2ae72e91b872375[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 9 15:52:28 2020 +0100

    Upload source dependency graph instead of all source code while etherscan verification

[33mcommit ef98aadd66ed6172fbbb796ebb390021bc2e9330[m
Merge: 33057d3 f46bef2
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Nov 9 09:09:47 2020 +0000

    Merge branch 'feat/118-kovan-configs' into 'master'
    
    Added kovan configs
    
    Closes #118
    
    See merge request aave-tech/protocol-v2!135

[33mcommit f46bef2b00cb131a4b33e351f9e37fa3592ef769[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 9 10:05:03 2020 +0100

    - Reordered rest of config parameters.

[33mcommit 33057d3e61ce1833bc1d1ede82532b1ffb4aed3a[m
Merge: 58c326e 089dd2a
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 9 08:57:22 2020 +0000

    Merge branch 'fix-gas-estimation' into 'master'
    
    Remove buidler gas estimation to fix conflict with hardhat estimation plugin
    
    See merge request aave-tech/protocol-v2!136

[33mcommit 089dd2a55a7149e6b8568e7bbc3e6cd7f2dc80bc[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 9 09:51:44 2020 +0100

    Remove buidler gas estimation to fix conflict with hardhat estimation plugin

[33mcommit 8cd474864b06bebf71e7d3c0fc931cc5b0a22c78[m
Merge: cf4483a 58c326e
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 9 08:48:30 2020 +0100

    Merge branch 'master' into feat/118-kovan-configs

[33mcommit d3ef60f01b3ff649ecfc0993dd1569030a134aa7[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Nov 6 15:21:27 2020 -0300

    Merge fix

[33mcommit 3f779e2e9fa32d3f3b4b658cf730017afca75c4b[m
Merge: 6aeabbe 58c326e
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Nov 6 14:26:31 2020 -0300

    Merge branch 'master' into feat/uniswap-adapter-flashloan
    
    # Conflicts:
    #       helpers/contracts-deployments.ts
    #       helpers/types.ts
    #       test/__setup.spec.ts
    #       test/helpers/make-suite.ts

[33mcommit 58c326e8e40d62ec7bdbc75f7467e05e930d0e04[m
Merge: 1d0dfb4 206d33e
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Nov 6 15:27:51 2020 +0000

    Merge branch 'fix/wb-provider-2' into 'master'
    
    Fix getUserWalletBalances of WalletBalanceProvider - 2
    
    See merge request aave-tech/protocol-v2!134

[33mcommit 206d33eaa631cf147d7cfb0ebb95a5cf91e35cdb[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Nov 6 18:23:18 2020 +0300

     fix getUserWalletBalances of WalletBalanceProvider - 2

[33mcommit 6aeabbe00b05149ab8e9b7d62e857d229e29bf10[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Nov 6 12:12:40 2020 -0300

    Add build params unit tests helpers

[33mcommit 1faffa2c39e86de3ec0e80e1eb84dfa21c2dd696[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Nov 6 12:12:08 2020 -0300

    Add permit amount parameter to correctly execute permit call

[33mcommit 1d0dfb443f65be035e877dd1414f6ec644247bb3[m
Merge: 47569dc d7f4998
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Nov 6 15:09:42 2020 +0000

    Merge branch 'fix/wb-provider' into 'master'
    
    Fix getUserWalletBalances of WalletBalanceProvider
    
    See merge request aave-tech/protocol-v2!133

[33mcommit d7f4998f5281dd3b371184df756f9f8c570a1132[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Nov 6 18:01:19 2020 +0300

     fix getUserWalletBalances of WalletBalanceProvider

[33mcommit 47569dccfe437b85288b27b2133ac845a5c33992[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 6 15:32:51 2020 +0100

    Updated WalletBalanceProvider to use the addressesProvider interface

[33mcommit 4de4d6cf960350efaff0f1b8d988253dd0cd2868[m
Merge: 43da90b 442847d
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Nov 6 14:22:11 2020 +0000

    Merge branch 'fix/wallet-balance-provider' into 'master'
    
    Change wallet balance provider to support eth
    
    See merge request aave-tech/protocol-v2!132

[33mcommit 43da90b9893b005b6720b431f2ab3c72dc1fd194[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 6 15:19:09 2020 +0100

    Added Lending rate oracle

[33mcommit 442847dc1db332f71a568f8c178428d7623d4387[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Nov 6 17:18:13 2020 +0300

    fix types issue

[33mcommit 7cb042517f5c41bf84eb24704878616a6c9d3e77[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Nov 6 17:06:52 2020 +0300

    change wallet balance provider to support eth

[33mcommit d599dee43174911ecb8e0bba6571deca003550f4[m
Merge: e92b4eb efb77fd
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 6 12:57:32 2020 +0000

    Merge branch 'feat/data-helpers' into 'master'
    
    UI data helpers
    
    See merge request aave-tech/protocol-v2!131

[33mcommit efb77fdf4c89c771621c3055fb3371f0058075a5[m
Merge: e32b62f e92b4eb
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Nov 6 15:54:50 2020 +0300

    Merge branch 'master' into feat/data-helpers

[33mcommit e32b62fb6f3a88d3e2f6b7883d44510a3752a227[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Nov 6 15:51:08 2020 +0300

    add eth to the wallet balance provider

[33mcommit e92b4eb59d929cbed2d5c5d3c2d3274c268dabec[m
Merge: bb9d98c 248782e
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 6 12:43:03 2020 +0000

    Merge branch '119-add-a-borroweth-function-to-the-weth-gateway' into 'master'
    
    Add a borrowETH() function to the WETH gateway
    
    Closes #119
    
    See merge request aave-tech/protocol-v2!129

[33mcommit bb9d98c9fd72c79c3b95e53b0d1871c7d516d693[m
Merge: 7d4dd6d 7b6058f
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 6 12:40:14 2020 +0000

    Merge branch 'fix/120' into 'master'
    
    Resolve "Remove unused tokenDistributor code"
    
    Closes #120
    
    See merge request aave-tech/protocol-v2!130

[33mcommit 248782ec7159c8789b9ea913c57692cd8e323ff2[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 6 13:25:45 2020 +0100

    Deleted unneded imports

[33mcommit 7beda9bcc06b272b4cba492f408e95f088b2d763[m
Merge: 167bca7 7d4dd6d
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 6 13:22:15 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 119-add-a-borroweth-function-to-the-weth-gateway

[33mcommit 167bca74abab2f420dc8306967c171f35e1b4918[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 6 13:22:03 2020 +0100

    Added borrowETH to WETHGateway.

[33mcommit 7b6058fe3b00395b6bffcbfbd957343db34e0cb7[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 6 13:02:49 2020 +0100

    removed unused code

[33mcommit cf4483ad874b7811d8c78491730eaff56051ac0c[m
Merge: 0b51670 7d4dd6d
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 6 12:58:56 2020 +0100

    Merge branch 'master' into feat/118-kovan-configs

[33mcommit 7d4dd6d0e00f0c86a519147b083efd36432c6e54[m
Merge: 7c80c8d 3aa5de2
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Nov 6 11:51:59 2020 +0000

    Merge branch 'feat/117-oracle-weth' into 'master'
    
    Added management of WETH to ChainlinkProxyPriceProvider.
    
    Closes #117
    
    See merge request aave-tech/protocol-v2!128

[33mcommit 7c80c8d243b9dd075952a9a667571d55b4418bbd[m
Merge: aa354ba b5a52c2
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Nov 6 11:48:05 2020 +0000

    Merge branch '116-migrate-buidler-to-hardhat' into 'master'
    
    Migrate from buidler to hardhat
    
    Closes #116
    
    See merge request aave-tech/protocol-v2!126

[33mcommit b5a52c2b987fad969e53f59fb9f3e26de2e7cebb[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 6 12:19:08 2020 +0100

    Fix rename

[33mcommit 82648357357c4f075b207599dfc993a9b49abdd9[m
Merge: 1ee5ac7 ef9e32f
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 6 12:18:24 2020 +0100

    Merge branch '116-migrate-buidler-to-hardhat' of gitlab.com:aave-tech/protocol-v2 into 116-migrate-buidler-to-hardhat

[33mcommit 1ee5ac78af36b51b0bdef10447666daf16ba3df7[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 6 12:14:41 2020 +0100

    Fix typos

[33mcommit ef9e32f13b7f896fcfa226d4421a490c66af13e6[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Nov 6 12:14:41 2020 +0100

    Fix typos

[33mcommit 3aa5de28b4b59b00b11515b9ee76ccad6bd19092[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 6 12:09:24 2020 +0100

    - Added management of WETH to ChainlinkProxyPriceProvider.

[33mcommit 0b5167028b7a7212b6ec36f1b9912bb13ea292f6[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Nov 6 11:20:48 2020 +0100

    - Change Kovan configs and some affecting other networks.

[33mcommit aa354bad5951df6b98c9a94321c0ae74ae322820[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Nov 6 10:16:40 2020 +0100

    Replaced getAaveAdmin with getPoolAdmin

[33mcommit 20bbae88d39929a84d2a0374007dea8e8346da40[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Thu Nov 5 16:49:55 2020 -0300

    Add swapAllBalance parameter for liquidity swap

[33mcommit b5f2f283a2e5871ed561fe88119116ef42ca234e[m
Merge: 1c9eb2e dcf5012
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 5 16:15:52 2020 +0100

    Fix conflicts

[33mcommit 60428846fead90d859bded4f1b8c7a4b95f15b4c[m
Merge: 5ba8045 dcf5012
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 5 15:06:45 2020 +0000

    Merge branch 'add-missing-kovan-aggregators' into 'master'
    
    Added missing aggregators
    
    See merge request aave-tech/protocol-v2!127

[33mcommit 5ba8045c89411d83021bd2da121e50190a5ca524[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 5 15:54:45 2020 +0100

    Added missing aggregators

[33mcommit 1c9eb2efbf6bc2d030cb5119fc4587e8887f221d[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 5 15:52:36 2020 +0100

    Fix CI

[33mcommit 48b9a603a79678f90a30de6bc03ff3370a1dcd42[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Thu Nov 5 11:33:11 2020 -0300

    Update getAmountsIn to return prices

[33mcommit 51b3fb16697552ad87ba0a7e8a10846e64a448c7[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 5 15:31:35 2020 +0100

    Fix migration logic

[33mcommit dcf501204ab3576c18475856e9ed9d2f9c2562e3[m
Merge: 57e4447 3cace25
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 5 14:31:16 2020 +0000

    Merge branch 'fix/114' into 'master'
    
    Resolve "Separate the AaveAdmin from the pause function"
    
    Closes #114
    
    See merge request aave-tech/protocol-v2!125

[33mcommit 57e444714dc8682456287dd9021baf599e83bc3d[m
Merge: 73f38a4 3cace25
Author: emilio <emilio@ethlend.io>
Date:   Thu Nov 5 15:25:24 2020 +0100

    Merge branch 'master' into fix/114

[33mcommit 3cace25f62ee1cf1005fb316987716aa82f50148[m
Merge: 42f7e07 73eb11f
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 5 14:10:23 2020 +0000

    Merge branch 'feat/refactor-delegation' into 'master'
    
    Feat/refactor delegation
    
    See merge request aave-tech/protocol-v2!124

[33mcommit 73f38a46ecb22b0cacf6b2d1a97936c0c12fb82b[m
Merge: 69c3d5b 73eb11f
Author: emilio <emilio@ethlend.io>
Date:   Thu Nov 5 14:51:04 2020 +0100

    Merge branch 'master' into fix/114

[33mcommit 42f7e07173bd04b913c63129217a412d274533ef[m
Merge: b101af2 73eb11f
Author: emilio <emilio@ethlend.io>
Date:   Thu Nov 5 14:49:59 2020 +0100

    Merge branch 'master' into feat/refactor-delegation

[33mcommit b101af21cc8a6a3433c7809bf46e81f9d710fa54[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Nov 5 14:43:39 2020 +0100

    Fixed certora harness

[33mcommit 729b642ea547dfbd39352750abb0b07770944211[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 5 13:44:20 2020 +0100

    Support Buidler to run solidity-coverage until is ported.

[33mcommit 69c3d5b9b77e4459e09627b611945d1889004d61[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Nov 5 12:35:50 2020 +0100

    Adds Emergency admin

[33mcommit 21e57a1a3789d1dfaf83e111074382a19b572275[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 5 12:18:20 2020 +0100

    Migrate buidler to hardhat

[33mcommit 73eb11f40e81ba8919f5168be1a24176787811dd[m
Merge: 8ab3bce 671870b
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 5 08:34:58 2020 +0000

    Merge branch 'feat/109-config-aave-token' into 'master'
    
    AAVE Config, etherscan fixes, print contract addreses list after migration
    
    Closes #109
    
    See merge request aave-tech/protocol-v2!119

[33mcommit 8ab3bce12e8aecf95b9eafbf8f1ed9b54a9c68f9[m
Merge: 1480668 671870b
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Nov 5 09:20:50 2020 +0100

    Fixed conflicts

[33mcommit 671870b23757477af2d131ed697f5475702a7342[m
Merge: 46a4223 688c7da
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Nov 5 08:10:01 2020 +0000

    Merge branch '97-create-a-utility-contract-to-deposit-withdraw-repay-with-eth' into 'master'
    
    Create an utility contract to deposit/withdraw/repay with ETH
    
    Closes #97
    
    See merge request aave-tech/protocol-v2!102

[33mcommit 1480668f94c7d3fa669c1c7887f9e918bd2f5c69[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 4 21:03:58 2020 +0100

    Fix domain separator

[33mcommit d75c31db71802fd1de58f88bba3eed297f04b14d[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 4 20:51:45 2020 +0100

    Added missing faucet tokens at Kovan

[33mcommit 5d9cd6ebd1ce2dbd96e1c19ab6a17178f9ad8a21[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Wed Nov 4 16:51:21 2020 -0300

    Update getAmountsOut to return prices

[33mcommit 5477ad2c8dade71e4296e6c05c47f79181693f38[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 4 16:33:03 2020 +0100

    Added configs

[33mcommit 86f79b4c138c7dc658fe97ac42202182fbc2f359[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Nov 4 11:47:06 2020 +0100

            Reserves Configuration

[33mcommit add6cad5c33a9e83514070fe08f06b564a99fea0[m
Author: emilio <emilio@ethlend.io>
Date:   Wed Nov 4 11:12:26 2020 +0100

    Fixed scenarios, tests, removed console.log

[33mcommit 46a42233c67c83cb0af838478da04299918b6394[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 3 21:04:48 2020 +0100

    Test emergency Ether withdrawal via self-destruct

[33mcommit 4b511188c774bd51e4084a77b37c9d7ab4ad5207[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 3 20:47:36 2020 +0100

    Remove comment

[33mcommit 4e4fbe65395540304251e9d81232c9921abc4453[m
Author: The3D <emilio@aave.com>
Date:   Tue Nov 3 19:47:57 2020 +0100

    Refactoring of credit delegation

[33mcommit 847ad3b12a9f008e828530d25e60f6c84482e3f3[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Nov 3 15:37:06 2020 -0300

    Add batch swaps unit tests

[33mcommit a54f9109288d0c4398b87c564b23250b57caf119[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 3 17:23:35 2020 +0100

    Added emergency token and ether withdrawal. Follow code guidelines.

[33mcommit 94a6a8688cab2c1f0a3033f4dc4defaadd9f493e[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Nov 3 12:22:15 2020 -0300

    Update liquidity swap adapter params to include min amount to receive

[33mcommit 4893548d362fdafe5bddaf4dabb1d1ec91537485[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 3 14:06:10 2020 +0100

    Added fallback/receive test

[33mcommit ad5fa1b9a01adb81d99663d3b4f7eab921b04c85[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 3 13:54:15 2020 +0100

    Change require to revert

[33mcommit 6ab6b835a29300d993a62a688a09d76f9a3d28a9[m
Merge: 5f37f31 e802841
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 3 13:51:17 2020 +0100

    Merge branch '97-create-a-utility-contract-to-deposit-withdraw-repay-with-eth' of gitlab.com:aave-tech/protocol-v2 into 97-create-a-utility-contract-to-deposit-withdraw-repay-with-eth

[33mcommit 5f37f317e94e1ed445e6584ab9c8542bbe7c2051[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 3 13:51:10 2020 +0100

    Added fallback function

[33mcommit e8028416d6a2f6eaeabb5430fa8533e5f9414f1e[m
Author: The3D <emilio@aave.com>
Date:   Tue Nov 3 13:45:54 2020 +0100

    Cached the aWETH address

[33mcommit f70754263d06efa047b9bd59cd4b252d318a6f51[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 3 13:29:11 2020 +0100

    Remove requires. Change onBehalf to To at withdraw. Add fallback function revert.

[33mcommit 6174539966f974b5cec05d090ef221666779c4f1[m
Merge: bec8db6 688c7da
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Nov 3 12:51:54 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 97-create-a-utility-contract-to-deposit-withdraw-repay-with-eth

[33mcommit 688c7da6e67a70dd37c96d32d6c84792b5335a65[m
Merge: 43c66dc 54bae07
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Nov 3 11:49:52 2020 +0000

    Merge branch 'fix/113' into 'master'
    
    Resolve "Remove duplicated code on flashloan"
    
    Closes #113
    
    See merge request aave-tech/protocol-v2!123

[33mcommit 54bae079c903a26e69053dd7bfa8ac5b2dd6731b[m
Author: The3D <emilio@aave.com>
Date:   Tue Nov 3 12:15:37 2020 +0100

    Renamed error

[33mcommit f513ebee370a319af83a38043b3ddce34d2abade[m
Author: The3D <emilio@aave.com>
Date:   Tue Nov 3 12:14:09 2020 +0100

    Refactored duplicated code

[33mcommit fa7fa9f9486f9d217843484bae4a6e611705975b[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Mon Nov 2 17:33:00 2020 -0300

    Add permit support in swap adapters

[33mcommit bec8db6c7fa15b4d8dcd7d19eacf5bec9079abc7[m
Merge: 525c816 43c66dc
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 18:44:59 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 97-create-a-utility-contract-to-deposit-withdraw-repay-with-eth

[33mcommit 525c816bbed6fbc3db4673dcfc5d3e3ce9df7377[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 18:43:50 2020 +0100

    Rollback to 1 WETHGateway per LendingPool

[33mcommit 7282f7678be6b34b4d07c5c26f5e13813643c3f6[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 17:51:54 2020 +0100

    Allow WETHGateway to be used by multiple pools. Remove logger.

[33mcommit 43c66dc5cde37388c680fea5b3234a4ddb976e08[m
Merge: 73254a6 492c5fc
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 2 16:44:42 2020 +0000

    Merge branch 'fix/112' into 'master'
    
    Resolve "Emit event regarding set usage as collateral"
    
    Closes #112
    
    See merge request aave-tech/protocol-v2!122

[33mcommit cabff851d0caa0ac5608c279055d6300b0dc723e[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 17:01:47 2020 +0100

    Move interfaces that are not core protocol to misc/interfaces directory. Rename method to follow guidelines.

[33mcommit a4a02e761bcba6503b62b6c85125247046eb976a[m
Merge: 6d009f7 73254a6
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 16:54:22 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 97-create-a-utility-contract-to-deposit-withdraw-repay-with-eth

[33mcommit cd687b7a0c84c075a664475249d21afc27e39d14[m
Merge: 3da870d 73254a6
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 16:53:02 2020 +0100

    Fix conflicts

[33mcommit 492c5fcd4a9b399edbc6986517253ee8404d6ebe[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 2 16:40:31 2020 +0100

    Added usage as collateral enabled/disabled events

[33mcommit 73254a66aa49374e9f33d38fa548c44e9515ca8a[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 2 16:05:55 2020 +0100

    Fixed test

[33mcommit 19b3d987f8e27e065ad7b989bc63b545c14dc5a0[m
Merge: fa3d61b 8daa813
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 2 14:52:01 2020 +0000

    Merge branch 'fix/111' into 'master'
    
    Resolve "Add a COMP-governance aware aToken"
    
    Closes #111
    
    See merge request aave-tech/protocol-v2!121

[33mcommit 6d009f796d4758a9df03638ad7892f562adec738[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 15:47:02 2020 +0100

    Moved WETH9.sol to mock/dependencies due is only for testing purposes

[33mcommit a12706949ddd01328a71fc75d2a9f81730aaff26[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 15:33:37 2020 +0100

    WETH9Mocked now inherits from WETH9 instead of copying the contract

[33mcommit 3da870d167e9979243d3b6914241eea7132a07d8[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 15:27:09 2020 +0100

    Latest kovan release

[33mcommit 8daa8130b7a408a695a7b68b6e9daf9ea8be9976[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 2 15:19:29 2020 +0100

    Updated comment

[33mcommit 077078b084fc6aa76568bb48dd29e2f29669bf81[m
Merge: fd46bf8 fa3d61b
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 14:52:11 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into feat/109-config-aave-token

[33mcommit fd46bf888a19398cb11e304f832c1eac63d6f4d4[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 14:45:00 2020 +0100

    Print addresses after migration. Fix minor migration issues.

[33mcommit 1b021dca186f8549c7a5bb39901151b60e5dcf9c[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 2 14:44:11 2020 +0100

    Added tests

[33mcommit a2f60470ec791c5b419b199ef5559e3ed244f319[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 2 13:35:05 2020 +0100

    Removed getRevision in the DelegationAwareAToken

[33mcommit dae912ba3f8d43d25cf0cb6f1042483994506f97[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 2 13:25:24 2020 +0100

    add delegation aware aToken to the contract ids

[33mcommit 473336955e1553abfad3117fd36a9cd835f44ab5[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 2 13:22:26 2020 +0100

    added deployment function for delegation aware aToken

[33mcommit 0f93c549eb8296c19860d37d8c018159c2aefcf1[m
Merge: 9ce6d33 f5d7d01
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Mon Nov 2 12:03:21 2020 +0000

    Merge branch 'feat/renameing' into 'feat/data-helpers'
    
    Feat/renameing
    
    See merge request aave-tech/protocol-v2!118

[33mcommit f5d7d0192d1359031d16d487ee651956eb495f07[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Nov 2 15:00:24 2020 +0300

    fix bad merge mistakes

[33mcommit 3570fc78033900fc12ca21558bae2c6250719b48[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 2 12:54:56 2020 +0100

    Added delegation capabilities to the aToken

[33mcommit 438ab0fca1f4871d6f86d868814caf58435e0a98[m
Merge: 5b85aef 9ce6d33
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Nov 2 14:50:41 2020 +0300

    Merge branch 'feat/data-helpers' into feat/renameing

[33mcommit 9ce6d3347f8b1ab581782b4efcf0dad83ccc8675[m
Merge: 898d72d fa3d61b
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Nov 2 14:46:23 2020 +0300

    Merge branch 'master' into feat/data-helpers

[33mcommit 5b85aef2835c192eb6e2c34b02dc218c0d55fbdb[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Nov 2 14:41:53 2020 +0300

    add scaled/principal debt

[33mcommit 7ebdb06933597c44ca99d4df0bfcac18cce240fc[m
Merge: c74dbb0 fa3d61b
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Nov 2 14:38:22 2020 +0300

    Merge branch 'master' into feat/renameing

[33mcommit d22a6f629b586c8bf464ec74ee6e122bd2666b9c[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 12:37:57 2020 +0100

    Remove LEND config and fix tests to use AAVE conversion 100:1

[33mcommit fa3d61be6f0fcbc92461ad5189791d1b132a51c3[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 2 12:24:12 2020 +0100

    Updated event

[33mcommit 019c41e32a5cf49b49b5ec0e679882928701dd50[m
Merge: e5597b6 6536200
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 2 11:20:07 2020 +0000

    Merge branch 'fix/110' into 'master'
    
    Resolve "Adapt mint/burn events of the stableDebtToken to include the new totalSupply"
    
    Closes #110
    
    See merge request aave-tech/protocol-v2!120

[33mcommit c74dbb05034be0611b7b5637bd01e8f53c87a6af[m
Author: pol <>
Date:   Mon Nov 2 12:16:10 2020 +0100

    added correct call to get total stable debt

[33mcommit 6536200eea8b946187d537d56377b58b1641a01a[m
Author: The3D <emilio@aave.com>
Date:   Mon Nov 2 11:55:37 2020 +0100

    Update mint/burn event on the stable debt token

[33mcommit 7a8ed009091901322b1590ff070336037e916d1f[m
Author: pol <>
Date:   Mon Nov 2 11:54:21 2020 +0100

    principal and stable to total

[33mcommit e5597b6156f0f95e0f35641f189b772d4bc51237[m
Merge: c9bd6d9 0d7be4e
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 2 10:26:11 2020 +0000

    Merge branch 'fix/108-redundancy-stable-debt' into 'master'
    
    - Fixed redundant assignment on StableDebtToken.
    
    Closes #108
    
    See merge request aave-tech/protocol-v2!116

[33mcommit c9bd6d97ff057455a7d9495c86a7b858adbd5f39[m
Merge: 860402a 9fddcd0
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Nov 2 10:25:58 2020 +0000

    Merge branch 'fix/107-burn-event' into 'master'
    
    - Fixed Burn event on AToken
    
    Closes #107
    
    See merge request aave-tech/protocol-v2!117

[33mcommit 498a5b5e1fdcdb2f22248a9300e65bc68913689e[m
Author: pol <>
Date:   Mon Nov 2 10:37:24 2020 +0100

    Renaming

[33mcommit e9d21ef74d4af42ec93aef9d7f503307f937eda7[m
Merge: 0824f08 860402a
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Nov 2 10:20:59 2020 +0100

    Fixed conflicts

[33mcommit 860402a94cb9d03b9e0cd66ed89d641ee4a9f021[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Nov 2 09:17:48 2020 +0100

    updated comment

[33mcommit dce89a81a23c1d58f0b5a530453274ffb15ede8c[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 19:43:24 2020 +0000

    Update .gitlab-ci.yml

[33mcommit e71c23afa48a213d46c4c3cd38a91360343eb251[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 19:17:24 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 7eb2382140f8f416144440db40db1b0f8e292755[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 19:11:47 2020 +0000

    Update .gitlab-ci.yml

[33mcommit cec1befb29361b1982a3a3048fd61fa7a3f21400[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 19:02:27 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 5ea03d441809438c267c348cdbfbd441a0bb0ee1[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:58:10 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 851041a915a6f4dd1abd99d235446fb502d24a1d[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:55:06 2020 +0000

    Update .gitlab-ci.yml

[33mcommit cd1603b949c67fdade1a7e207f3abd023bae7be7[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:41:50 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 388f8cb7bbc96b5792470624085de6705032f214[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:29:17 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 515360d4903a4904bc2f184a4fcc4885471a6985[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:22:38 2020 +0000

    Update .gitlab-ci.yml

[33mcommit b903f8dc63a9ddef31e9fcc8c3714f36721f90a9[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:19:25 2020 +0000

    Update .gitlab-ci.yml

[33mcommit aefe0e041f05a3f24552ab5c94a74e41064acccb[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:17:31 2020 +0000

    Update .gitlab-ci.yml

[33mcommit ec454f0862d0f261b39c80f96291e03488157992[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:07:48 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 3c0d73eb0c4e1ec2010f634662856b5c20cc93bf[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:05:29 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 64d7da37e7e6dcbd8686514f1a0604a743a3247c[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:02:54 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 651412e7213466d2640fdf36603a3c1acf7cbef8[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 18:01:52 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 14961cac8c698b6ffc6a32388916a555892e08b5[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 17:34:00 2020 +0000

    Update .gitlab-ci.yml

[33mcommit a27cb91a488794c6dc665ee74aa00fc8f377ba7e[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 17:31:07 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 4e478aa8ac8d2bb33027b353eb7f931021f9e389[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 17:27:16 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 5ab98dc4a87a574ab79b9b87b69cae530481e6cf[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 17:21:46 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 11ed9c396e799783a7022404eaef1f76065b8c19[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 17:09:58 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 21df2d69224c04293ac4772a82201f4a913da89e[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 17:00:59 2020 +0000

    Update .gitlab-ci.yml

[33mcommit dd37825032ec175ef907ac32a52e2b2077d8f689[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 16:57:39 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 6e943c8c6e54300973cbd439204308d4a7e60be2[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 16:45:27 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 944f6624c89fba6ad54562d504ded62dec7163a3[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 16:42:58 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 03cc32aa32e1f61d3b6b7b8e0daeac01bf7ae5ab[m
Author: pistiner <or@certora.com>
Date:   Sun Nov 1 16:34:06 2020 +0000

    Update .gitlab-ci.yml

[33mcommit 9fddcd0a20e9191ae18f58daa0651053f5f69629[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Sun Nov 1 09:11:53 2020 +0100

    - Fixed Burn event on AToken

[33mcommit 0d7be4e7dfd98b3493f2b84e4385fde68d320ad3[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Sun Nov 1 09:03:45 2020 +0100

    - Fixed redundant assignment on StableDebtToken.

[33mcommit 5d25b362ca92f8077f92d25722aa04ec5bf0a8bb[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Sun Nov 1 08:53:33 2020 +0100

    - Removed unused _flashLiquidationLocked from LendingPoolStorage.

[33mcommit 282e6093bb69198d082e14d2186815ee3f2186e1[m
Merge: 07429b0 3f7bb80
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Sat Oct 31 17:41:48 2020 +0000

    Merge branch 'fix/51' into 'master'
    
    Resolve "Remove the disable as collateral function on LendingPoolConfigurator"
    
    Closes #51
    
    See merge request aave-tech/protocol-v2!60

[33mcommit 07429b0a57161958dfbc7ef5f67598eb04c205fd[m
Author: emilio <emilio@ethlend.io>
Date:   Sat Oct 31 13:55:19 2020 +0100

    Fixed P_IS_PAUSED

[33mcommit 05d426645dc2b57b3fa9767cec52578d151c2fb5[m
Author: emilio <emilio@ethlend.io>
Date:   Sat Oct 31 13:47:16 2020 +0100

    Changed freezed to frozen

[33mcommit 3f7bb806ac605458d71cb4824c96450af42f89c8[m
Merge: 72fe465 f188fd5
Author: emilio <emilio@ethlend.io>
Date:   Sat Oct 31 13:10:26 2020 +0100

    Merge branch 'master' into fix/51

[33mcommit 72fe4657828222c8204887d510760de0b6683aa2[m
Author: emilio <emilio@ethlend.io>
Date:   Sat Oct 31 12:42:14 2020 +0100

    fixed test

[33mcommit f0a9d18f512135ce47dc8a31a558c44657ca7947[m
Author: emilio <emilio@ethlend.io>
Date:   Sat Oct 31 12:37:48 2020 +0100

    fixed gas reporter import

[33mcommit 08c8482cc1b36555e010139e9d18f22e1a6bf578[m
Author: emilio <emilio@ethlend.io>
Date:   Sat Oct 31 12:33:26 2020 +0100

    Fixed conditions, removed console.log

[33mcommit d6451553213335dbfedaf40161859049a67df1e5[m
Author: emilio <emilio@ethlend.io>
Date:   Sat Oct 31 12:17:59 2020 +0100

    Updated configureAsCollateral

[33mcommit e7183536b3d843e145c3e6a91294514a09824f03[m
Merge: 0eddff4 f188fd5
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Oct 30 17:01:39 2020 -0300

    Merge branch 'master' into feat/uniswap-adapter-flashloan
    
    # Conflicts:
    #       helpers/contracts-deployments.ts
    #       helpers/contracts-getters.ts

[33mcommit 0eddff493354e0015b4e9ed0d9711b750baa2ab4[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Oct 30 16:59:25 2020 -0300

    Apply feedback fixes

[33mcommit f188fd5c8fe0693b380d382f0923b57e7ceb4c31[m
Merge: 8e08614 1ac0a45
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 16:03:04 2020 +0000

    Merge branch 'feat/reorg-errors' into 'master'
    
    Resolve "Reorg `Errors.sol`"
    
    Closes #54
    
    See merge request aave-tech/protocol-v2!74

[33mcommit 1ac0a45394c248d072ecb79274366d1cefddc195[m
Merge: b3cc9d1 8e08614
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Oct 30 16:52:44 2020 +0100

    Fix conflicts

[33mcommit 929fd6bc83cacba43bd997c28de0299a48369c3b[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 16:40:49 2020 +0100

    - Removed buidler console.log from LendingPool

[33mcommit 96d00edd0040d99b3a15552cdc4a69f6eebd358a[m
Merge: 6f5bcdd 8e08614
Author: emilio <emilio@ethlend.io>
Date:   Fri Oct 30 16:21:37 2020 +0100

    Merge branch 'master' into fix/51

[33mcommit 8e086141458741da5f014e4aab768e0cb43e8198[m
Merge: 2ac63ef cba766d
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 15:15:35 2020 +0000

    Merge branch 'feat/102-batch-delegation-allowance' into 'master'
    
    Added batch to credit delegation
    
    Closes #102
    
    See merge request aave-tech/protocol-v2!109

[33mcommit 6f5bcddab16fe3779b15d8c61a5c8e5ac91f0e7d[m
Author: emilio <emilio@ethlend.io>
Date:   Fri Oct 30 16:12:59 2020 +0100

    fixed tests

[33mcommit 8278d2e6d8b2637e7651671908458c3b837628b2[m
Merge: fc358b7 2ac63ef
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Fri Oct 30 12:09:29 2020 -0300

    Merge branch 'master' into feat/uniswap-adapter-flashloan

[33mcommit cba766d282798bffe8d2206c91116253820dbfb8[m
Merge: edfe17b 2ac63ef
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 16:04:31 2020 +0100

    Merge branch 'master' into feat/102-batch-delegation-allowance

[33mcommit 2ac63ef16dc2e164a0ee045f98418569b00af2b1[m
Merge: 22e4cc3 a86902e
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Oct 30 14:24:14 2020 +0000

    Merge branch 'fix/89-available-liquidity' into 'master'
    
    Fixes #89
    
    Closes #89
    
    See merge request aave-tech/protocol-v2!103

[33mcommit b888fc12abedddcfd74e051569f4ac46710a0d73[m
Merge: 948bd96 8a9afaa
Author: emilio <emilio@ethlend.io>
Date:   Fri Oct 30 15:12:11 2020 +0100

    Merge branch 'master' into fix/51

[33mcommit a86902ee02dfe49dd30b5eb5ad7efac46fb891f6[m
Merge: 3f714b9 22e4cc3
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 15:02:40 2020 +0100

    Merge branch 'master' into fix/89-available-liquidity

[33mcommit 22e4cc353ceb57c8b73ae2863f6d2fa46171145c[m
Merge: 4e56df7 5a9a46a
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 14:01:52 2020 +0000

    Merge branch '100/flash-loan-bath-modes' into 'master'
    
    Added batch of modes to flashLoan()
    
    Closes #100
    
    See merge request aave-tech/protocol-v2!111

[33mcommit 5a9a46a31f1bfa5b1547f5d99fb583c7c6b8f34c[m
Merge: 7227717 8a9afaa
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 14:55:03 2020 +0100

    Merge branch 'master' into 100/flash-loan-bath-modes

[33mcommit 4e56df7d565ddf760d62b7a6b5f28aa55cf20106[m
Merge: 8a9afaa 22353ee
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 13:48:25 2020 +0000

    Merge branch 'certora/integration' into 'master'
    
    Resolve "Integrating the certora formal verification rules in the CI"
    
    Closes #59
    
    See merge request aave-tech/protocol-v2!67

[33mcommit 8a9afaaea0ca628eca3a030c829d6205d9a7b431[m
Merge: 38b579b 631d6eb
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 13:00:27 2020 +0000

    Merge branch 'feat/105-msgsender-executeOperation' into 'master'
    
    Passed `initiator` param to flashLoan()'s executeOperation() receiver.
    
    Closes #105
    
    See merge request aave-tech/protocol-v2!114

[33mcommit b3cc9d1a62464998e512cf337c35a87ab459a360[m
Merge: 479aa3e 6b26e39
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Oct 30 13:40:06 2020 +0100

    Fix conflicts

[33mcommit 631d6ebfcbcd6fadb0ea11baf5220e9b57863866[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 13:32:42 2020 +0100

    - Passed `initiator` param to flashLoan()'s executeOperation() receiver.
    - Removed unused ISwapAdapter.

[33mcommit 38b579b44af8bcf00a75f740c36ea5ff5399001f[m
Merge: 386138c b2bbe62
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Oct 30 12:25:12 2020 +0000

    Merge branch 'feat/104-withdraw-to' into 'master'
    
    Added `to` to withdraw()
    
    Closes #104
    
    See merge request aave-tech/protocol-v2!113

[33mcommit b2bbe62822bff23bfd1339b8084624e1fe29b735[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 12:38:41 2020 +0100

    - Added `to` to withdraw()

[33mcommit 7227717a7a292353fd364fcf17123ee7a0f39429[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 12:06:02 2020 +0100

    - Removed modes from validateFlashLoan. Not needed as executeBorrow() will fail.

[33mcommit 386138cc9cf8f05ac64281bef0f6c16374665c1b[m
Merge: 4ed808e decf652
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Oct 30 10:58:36 2020 +0000

    Merge branch 'feat/101-first-borrowing-on-debt-tokens' into 'master'
    
    Added return of is first borrowing on debt tokens mint()
    
    Closes #101
    
    See merge request aave-tech/protocol-v2!110

[33mcommit decf652e192e95f38952658a690a82f2c5dafdc4[m
Author: emilio <emilio@ethlend.io>
Date:   Fri Oct 30 11:55:50 2020 +0100

    Removed variable

[33mcommit af6b370f0e5da3e6aabb231e918c0bfda9615f40[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 11:55:28 2020 +0100

    - Removed from memory struct debtMode on flashLoan()

[33mcommit 910fa2dce6eba2a60aee033f9a0d5aaff63bd531[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 11:52:00 2020 +0100

    - Added indexed to flash loan events.

[33mcommit 4ed808efdb7ffc1f7c81527474ca5f400fff9381[m
Merge: 6b26e39 a49f274
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Oct 30 10:50:12 2020 +0000

    Merge branch 'fix/103' into 'master'
    
    Resolve "Fix PVE025"
    
    Closes #103
    
    See merge request aave-tech/protocol-v2!112

[33mcommit 092aacc85a162a45d56fcf69b53529d3fe586970[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 11:49:23 2020 +0100

    - Added initiator to flash loan event.

[33mcommit de7ec39f24b8a4e44a7c82226a5bbd0df459eb98[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 11:42:27 2020 +0100

    - Fixed comment on ILendingPool

[33mcommit 1954f609c2b2e86cb7fafe5c7b0acf2fea21c891[m
Merge: 913a6a9 6b26e39
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 30 11:40:31 2020 +0100

    Merge branch 'master' into 100/flash-loan-bath-modes

[33mcommit a49f2744ee888f16e88ed79c6f9893d64249e6c2[m
Author: emilio <emilio@ethlend.io>
Date:   Fri Oct 30 11:38:49 2020 +0100

    Updated comments

[33mcommit 7ae9a2df8f6acd99f25ac02f3a0020e5d9b04782[m
Author: emilio <emilio@ethlend.io>
Date:   Fri Oct 30 11:36:53 2020 +0100

    Updated variable names

[33mcommit 898d72dfb33c8670c460f502b2bad854f7afb797[m
Merge: 18d7a44 6b26e39
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Oct 30 13:16:21 2020 +0300

    Merge branch 'master' into feat/data-helpers

[33mcommit 18d7a44db5691b1f10ecf89955853284a629ecfe[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Oct 30 13:14:42 2020 +0300

    removal of ReserveLogic.ReserveData from UI helper return

[33mcommit 22353eeee583426bf9525b4a3d08ee16e80633b8[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Fri Oct 30 01:07:30 2020 +0200

    Fixes to run on VariableDebtToken

[33mcommit 9da3fefb267f58dcbc75cc6c94f3b3a193ec9d32[m
Merge: 5cc6acc 6b26e39
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Oct 29 23:26:21 2020 +0200

    Merge branch 'master' of https://gitlab.com/aave-tech/protocol-v2 into certora/integration

[33mcommit 5cc6acce8612597bdcd43c8e217739770400c144[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Oct 29 23:19:11 2020 +0200

    Updates in the specification of StableDebtToken

[33mcommit fc358b7c14edd01ec02eec59513dc4efadcd093f[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Thu Oct 29 17:29:41 2020 -0300

    merge fixes

[33mcommit 17095c3ae14e0514454d738996fe7c9a674ee0e1[m
Merge: 16a28d6 6b26e39
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Thu Oct 29 16:49:25 2020 -0300

    Merge branch 'master' into feat/uniswap-adapter-flashloan
    
    # Conflicts:
    #       helpers/contracts-helpers.ts
    #       helpers/types.ts
    #       test/__setup.spec.ts
    #       test/helpers/make-suite.ts

[33mcommit 0824f08214e37e5d3e39fdd0555d25250ca4f60c[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 29 18:44:49 2020 +0100

    Rollback package-lock

[33mcommit 45b5e597b56ec767682b7c8ddb164c06040d5715[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 29 18:38:50 2020 +0100

    Fix package-lock

[33mcommit eba5e8743d59656cbaacf07d65ebb0765d6579df[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 29 18:35:38 2020 +0100

    Run stuck CI: ssh issues

[33mcommit 6c1dd4ffbffc815a53edbea759c09cf2c563fe52[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 29 18:24:18 2020 +0100

    Run stuck CI

[33mcommit 951e749c1e771aeb3ef460121b844bce39b00ff1[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 29 18:15:07 2020 +0100

    Merge master

[33mcommit e4dc22e50ed2864787f06fd8154b1bc46483f571[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Oct 29 18:03:19 2020 +0100

    Fixed events, removed unused constants in addressesProvider

[33mcommit 2892e69df0bc244aafc3263d44a083f175e88e36[m
Merge: e6d913d 6b26e39
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 29 16:20:12 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 97-create-a-utility-contract-to-deposit-withdraw-repay-with-eth

[33mcommit 6b26e39d5f36c0948adcd4939c61a19fa79f534d[m
Merge: b7f47d1 f546d21
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Oct 29 15:08:18 2020 +0000

    Merge branch 'feat/74' into 'master'
    
    Feat/74 - Add `onBehalf` for flashloan(), to open debt if debt mode selected
    
    Closes #74
    
    See merge request aave-tech/protocol-v2!96

[33mcommit f546d21c97949fe46d5e5c2700fdbd4fe7f7d9e6[m
Merge: d373b9b 8e64702
Author: David Truong <david@aave.com>
Date:   Thu Oct 29 15:55:20 2020 +0100

    Merge branch 'feat/74' of gitlab.com:aave-tech/protocol-v2 into feat/74

[33mcommit d373b9beb88a8504a761c81a862c315897e3f0b8[m
Author: David Truong <david@aave.com>
Date:   Thu Oct 29 15:53:38 2020 +0100

    Fix for pausable-function flashloan test

[33mcommit e6d913d2515fe82240e6c67a73d7383c2cf2213d[m
Merge: a9e7fa3 b7f47d1
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 29 15:50:37 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into 97-create-a-utility-contract-to-deposit-withdraw-repay-with-eth

[33mcommit a9e7fa351651b4d80aa46b3524a849f19304d5ce[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 29 15:50:32 2020 +0100

    Added WETHGateway tests

[33mcommit b7f47d160e9b5b0041729372923692f2b24a5638[m
Merge: c4753be 3f7d913
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Oct 29 14:48:48 2020 +0000

    Merge branch 'fix/99' into 'master'
    
    Resolve "Set the isUsedAsCollateral flag on aToken transfers"
    
    Closes #99
    
    See merge request aave-tech/protocol-v2!107

[33mcommit 913a6a923756297b45d0ce6bd40d03414fd8df9a[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Oct 29 15:14:28 2020 +0100

    - Added batch of modes to flashLoan()

[33mcommit 38bb760112fe23f09eb5efb88e1ee24900c59fa7[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Oct 29 14:55:11 2020 +0100

    - Added return of is first borrowing on debt tokens mint()

[33mcommit c4753bec660903e1c7ffce7020d040e86afe2d82[m
Merge: ecd2c04 c187440
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Oct 29 13:45:18 2020 +0000

    Merge branch 'fix/75-improve-migration-scripts' into 'master'
    
    Resolve "Improve migration scripts"
    
    Closes #67, #76, and #75
    
    See merge request aave-tech/protocol-v2!84

[33mcommit edfe17bd971301fbb070a9514c76d04c8d53d0cf[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Oct 29 14:36:01 2020 +0100

    - Added batch to credit delegation

[33mcommit c187440f843a12675ddaeb562b3e7fd6c2f99108[m
Merge: a966d9f ecd2c04
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 29 14:11:00 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2 into fix/75-improve-migration-scripts

[33mcommit 3f7d913fd43020328c827db4f5e045c9ce59c6b4[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Oct 29 13:43:24 2020 +0100

    Fixed issue on 0 transfer, added check that the caller must be an aToken

[33mcommit ecd2c040013ba1d7edfb1318f92991499d549991[m
Merge: 251bd59 6cd18c4
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Oct 29 11:50:22 2020 +0000

    Merge branch 'fix/96-remove-bit-movements' into 'master'
    
    Fixes #96
    
    Closes #96
    
    See merge request aave-tech/protocol-v2!108

[33mcommit 744befc46cfd30bc1ce71cfb77b203066426fcbc[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 29 12:44:21 2020 +0100

    Added deposit test for WETHGateway

[33mcommit 6cd18c4320dd072e9ac77bfb4528ef48bd345df1[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Oct 29 12:09:07 2020 +0100

    - Simplified getter of boolean fields on ReserveConfiguration.
    - Added all 256 bits to masks on ReserveConfiguration for clarity.

[33mcommit 2cf84f19ce43626b3ff854bf8269ddf39018fe2c[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Oct 29 12:03:26 2020 +0100

    removed console import

[33mcommit 9e55ea12b67f20b7e762e027e8048cbb5f38e147[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Oct 29 11:57:43 2020 +0100

    Fixes #99

[33mcommit d4f0e05f06dd96fa877946c8dcee9264a8d4cbed[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Oct 29 01:58:20 2020 +0200

    Fixes to run on UserConfiguration library

[33mcommit 4030d487877f29d5e669b5f4efbfaeaa9db1d96e[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Oct 29 01:57:15 2020 +0200

    Fixes to run on StableDebtToken contract

[33mcommit a63e337222c6ccf17465d6240a6ed3e87e2d728e[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Oct 29 01:20:38 2020 +0200

    Updated spec harness and run.sh for VariableDebtToken contract

[33mcommit 85a1ec040fd96a25a82ad5540aa45bb7429fdf78[m
Merge: a2127a5 251bd59
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Oct 29 00:54:06 2020 +0200

    merge master into certora/integration

[33mcommit b5a3903ca0cdd4d67a6491d5f517eee27e19f6f1[m
Merge: 9317df9 a966d9f
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 28 18:47:35 2020 +0100

    Merge changes

[33mcommit a966d9f53f1262a186cbcbb313648b0ec2794965[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 28 18:39:19 2020 +0100

    Added new StringLib library with concat to reuse function in deployment helpers.

[33mcommit 1ef1f614bd16632f8846721256700bd32f2f93cf[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 28 18:13:31 2020 +0100

    Remove extra whitespace

[33mcommit 9317df9252455d7943a36da78e4e6fb8dfdcaec8[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 28 18:06:24 2020 +0100

    Added boilerplate deployment, getters and tests.

[33mcommit 251bd591f558949596f7d79e3d2f1e28e5e4f361[m
Merge: 47d00a0 6be8b1c
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Oct 28 14:55:04 2020 +0000

    Merge branch 'fix/88-validations-configs' into 'master'
    
    Fixes #88
    
    Closes #88
    
    See merge request aave-tech/protocol-v2!101

[33mcommit 0d87292867947d0f0c7ecfb21db6ea6a2f9da5b3[m
Merge: 13737e0 47d00a0
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 28 15:49:50 2020 +0100

    Fix merge conflicts. Fix ETH to WETH symbol change

[33mcommit 8ad022979bf6734ca3bc714309bbb0e02f00a62b[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 28 15:41:31 2020 +0100

    Added WETHGateway

[33mcommit 47d00a0e3a17ebae3cefb1ebe20dfce12423d23e[m
Merge: a9c3a03 e91e359
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Wed Oct 28 13:41:52 2020 +0000

    Merge branch 'fix/98' into 'master'
    
    Resolve "Optimize percentageMath and wadRayMath"
    
    Closes #98
    
    See merge request aave-tech/protocol-v2!100

[33mcommit a9c3a033ace0ad51268913074ac1f2ce5f464d7f[m
Merge: 437f6d8 232743c
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Oct 28 11:46:37 2020 +0000

    Merge branch 'fix/95-cache-reserves-count' into 'master'
    
    Fixes #95
    
    Closes #95
    
    See merge request aave-tech/protocol-v2!105

[33mcommit 437f6d8dc9752a27b096e147691f4017378220ea[m
Merge: 763220c a9a863f
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Oct 28 11:44:36 2020 +0000

    Merge branch 'fix/92-93-94-comments' into 'master'
    
    Fixes #92 #93 #94
    
    Closes #94, #93, and #92
    
    See merge request aave-tech/protocol-v2!104

[33mcommit e91e3595d6c5e82d294e15f3ca2225730ad581f7[m
Author: emilio <emilio@ethlend.io>
Date:   Wed Oct 28 12:39:11 2020 +0100

    Updated PercentageMath

[33mcommit 232743c332f9db6b4ee0f0e95e459eb2bff75b02[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Oct 28 12:02:40 2020 +0100

    - Cached _reservesCount on _addReserveToList()

[33mcommit a9a863fcb468ab757a94ab99ef44c0170b541727[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Oct 28 11:56:10 2020 +0100

    - Fixes misc comments on LendingPoolAddressesProviderRegistry.

[33mcommit 3f714b9dc848d28d1753fd8a673038fda4f024ed[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Oct 28 11:48:55 2020 +0100

    - Fixed non-initialized availableLiquidity on validateBorrow()

[33mcommit 064af06385742d510e872d4e75d955ae1377e8d8[m
Author: emilio <emilio@ethlend.io>
Date:   Wed Oct 28 11:47:01 2020 +0100

    updated percentageMath

[33mcommit 13737e09947e9e20bc99eff6f517ed4a938c3168[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 28 11:27:16 2020 +0100

    Show WETH instead of ETH

[33mcommit 763220c2b909f5afaf99c8ba319435b5d2836dc9[m
Merge: 245077a 813fb21
Author: emilio <emilio@ethlend.io>
Date:   Wed Oct 28 10:54:35 2020 +0100

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2

[33mcommit 245077a6eb60b85a9e6add2bffed84c609ad2733[m
Author: emilio <emilio@ethlend.io>
Date:   Wed Oct 28 10:54:20 2020 +0100

    Updated gitignore

[33mcommit 6be8b1c5fdbe37d641453c27a61864d029753f23[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Oct 28 10:54:09 2020 +0100

    - Added validations on ReserveConfiguration's numeric setters.

[33mcommit 813fb2184720a4a22176c21c965bc5f65b13281b[m
Merge: 1cd7f2d a2d068a
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Wed Oct 28 09:52:24 2020 +0000

    Merge branch 'fix/87' into 'master'
    
    Resolve "Fix PVE020: Invalid  calculation of the stable debt in mintToTreasury"
    
    Closes #87
    
    See merge request aave-tech/protocol-v2!99

[33mcommit a2d068a817c6e70aa1bc4bb85df8bae680102e41[m
Merge: 276dee4 1cd7f2d
Author: emilio <emilio@ethlend.io>
Date:   Tue Oct 27 22:12:23 2020 +0100

    Merge branch 'master' into fix/87

[33mcommit 16a28d6223896998ae444ab0fc795d0587704842[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Oct 27 16:33:07 2020 -0300

    Add swapAndDeposit method to use without flashloan

[33mcommit e5d37e1a8ce7fb28722d1795b183aea59c247562[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Oct 27 16:32:09 2020 -0300

    Add view method to estimate swaps outputs

[33mcommit 1cd7f2d5a0b0b063ed9423334f352152b7fd359a[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Oct 27 17:49:35 2020 +0100

    Fixed error on variable naming

[33mcommit 276dee4918d1b76b236195e674132fa7d4ba2324[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Oct 27 17:22:51 2020 +0100

    Fixes#87

[33mcommit 7aca8679dfee4271e403ffee49f244940e7e0460[m
Merge: bd911de 28a6323
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Oct 27 15:59:00 2020 +0000

    Merge branch 'fix/55' into 'master'
    
    Resolve "On `GenericLogic.balanceDecreaseAllowed()`, change HF validation to `>=`"
    
    Closes #55
    
    See merge request aave-tech/protocol-v2!98

[33mcommit 28a63237635dafc304f6219b59d216feed85ba12[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Oct 27 16:57:05 2020 +0100

    fixed condition, local variable name

[33mcommit 96e74cf7079e61ff503c67f37c390b11af51fbbe[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Oct 27 11:22:16 2020 -0300

    Update adapters to use the new flashloan interface

[33mcommit bd911de167a2db5faed34a0a6aa1eb6d96169de9[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Oct 27 15:09:11 2020 +0100

    Fixed ReserveDataUpdated event

[33mcommit 7eb31124b24366589cad4bc3dc571c0104f694e1[m
Merge: c34a22e 87bbfb9
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Oct 27 14:05:03 2020 +0000

    Merge branch 'fix/83-msgSender' into 'master'
    
    - Changed msg.sender to _msgSender()
    
    See merge request aave-tech/protocol-v2!97

[33mcommit 8e64702013e8f68403cd3a55707d0445ef14230b[m
Merge: a517d5d c34a22e
Author: David Truong <david@aave.com>
Date:   Tue Oct 27 13:54:18 2020 +0000

    Merge branch 'master' into 'feat/74'
    
    # Conflicts:
    #   deployed-contracts.json

[33mcommit 87bbfb957144e5adec2b5af851435833eb8773ce[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Oct 27 14:42:11 2020 +0100

    - Changed msg.sender to _msgSender()

[33mcommit 3400d3b2a83c7c3c681d0da5e54c537ae68434ac[m
Merge: 0a1c656 c34a22e
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Oct 27 16:01:18 2020 +0300

    Merge branch 'master' into feat/data-helpers

[33mcommit c34a22e79f69c7995c9712696c6c727342582f7b[m
Merge: cb03bab ddf17d7
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Oct 27 13:00:32 2020 +0000

    Merge branch 'feat/70-basic-flow-task' into 'master'
    
    Feat/70 basic flow task
    
    See merge request aave-tech/protocol-v2!83

[33mcommit 723e3f82a6cfd4f54f5eb1f3197d437d37c89c06[m
Merge: a05b75b cb03bab
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Oct 27 09:26:43 2020 -0300

    Merge branch 'master' into feat/uniswap-adapter-flashloan
    
    # Conflicts:
    #       helpers/contracts-helpers.ts
    #       test/__setup.spec.ts
    #       test/helpers/make-suite.ts

[33mcommit a05b75b467ae08f6417942c469bfa87ab4e45f81[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Oct 27 09:18:30 2020 -0300

    Add uniswap adapters unit tests

[33mcommit 7c51597282d7ff6f5a4522701f76e12f7e52210f[m
Author: Gerardo Nardelli <gerardo.nardelli@altoros.com>
Date:   Tue Oct 27 09:17:33 2020 -0300

    Add uniswap adapters for liquidity swap and repay with collateral

[33mcommit a517d5d11df6e38ce62ce594f428b565d59e3d5a[m
Author: David Truong <david@aave.com>
Date:   Tue Oct 27 13:10:10 2020 +0100

     - implement test for onBehalfOf flashloan borrow debt

[33mcommit cb03bab6eaed0489353fe1c9602ac28fbc7a9f84[m
Merge: b1fdd59 8524690
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Oct 27 12:05:49 2020 +0000

    Merge branch 'fix/85-total-supply-shadowing' into 'master'
    
    Fixes #85
    
    Closes #85
    
    See merge request aave-tech/protocol-v2!94

[33mcommit 85246906e41a8515fb06d1f204ec720bc5f98e6c[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Oct 27 13:04:07 2020 +0100

    - Removed shadowing of totalSupply on IncentiveizedERC20

[33mcommit b1fdd59c3932d912da66e28f17a4f4c6cc850a77[m
Merge: 2fd3fe1 e88d9dc
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Oct 27 12:02:32 2020 +0000

    Merge branch 'feat/86-linear-interest-optimization' into 'master'
    
    Fixes #86
    
    Closes #86
    
    See merge request aave-tech/protocol-v2!93

[33mcommit e88d9dc81b009a5ce5f9ce4ef9dac06aa09b7ee1[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Oct 27 12:44:30 2020 +0100

    - Optimized calculateLinearInterest() on MathUtils.

[33mcommit 2fd3fe141a43fceb8309a6183ef5d1ce1fb10c43[m
Merge: 917ea0b 0a6b1ca
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Oct 27 11:16:38 2020 +0000

    Merge branch 'fix/84-seconds-year-comment' into 'master'
    
    Fixes #84
    
    Closes #84
    
    See merge request aave-tech/protocol-v2!92

[33mcommit d78c89151b801efdef2a58566695548bd7067e1f[m
Merge: e0660bd 917ea0b
Author: David Truong <david@aave.com>
Date:   Tue Oct 27 12:14:34 2020 +0100

    Merge remote-tracking branch 'origin/master' into feat/74

[33mcommit 1ef22f036b61012f6ea0a2d425e0596edd90eda9[m
Merge: 161fb63 917ea0b
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Oct 27 12:12:05 2020 +0100

    Fix conflicts

[33mcommit e0660bda7b8422206d3fa2356f05ddd4e72b39b0[m
Merge: d2b52ce 85168f8
Author: David Truong <david@aave.com>
Date:   Tue Oct 27 12:05:48 2020 +0100

    Merge remote-tracking branch 'origin/master' into feat/74
    
    # Conflicts:
    #       contracts/interfaces/ILendingPool.sol
    #       contracts/lendingpool/LendingPool.sol
    #       test/flashloan.spec.ts

[33mcommit ddf17d7249df7a7055e78e7e451e7fe0c425dc91[m
Merge: 52c21a3 917ea0b
Author: pol <>
Date:   Tue Oct 27 11:37:06 2020 +0100

    merged with master

[33mcommit 917ea0b4eae85ed9721f55198aaacddef515c82d[m
Merge: bb6b322 1f8efbd
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Oct 27 10:34:37 2020 +0000

    Merge branch 'fix/82' into 'master'
    
    Resolve "Fix events for the subgraph implementation"
    
    Closes #82
    
    See merge request aave-tech/protocol-v2!91

[33mcommit 1f8efbd4f523055d2b6a46a57dc00585fbc73a6b[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Oct 27 11:08:11 2020 +0100

    Removed swapAdapter from the migration scripts

[33mcommit 161fb63f1984ef9597f9881fd271a79d8fe90bdc[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Oct 27 10:58:51 2020 +0100

    Added borrow rates deployment optimization and minor tweaks for deployment helpers

[33mcommit 52c21a38bacfdb9d043eec10d84d6ea4fdd357b9[m
Merge: 59ccd2a bb6b322
Author: pol <>
Date:   Tue Oct 27 10:49:34 2020 +0100

    Merge branch 'master' of sendra.gitlab.com:aave-tech/protocol-v2 into feat/70-basic-flow-task

[33mcommit 4834a587f5e127a05bd1b4bc73678915facca48e[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Oct 27 10:47:01 2020 +0100

    Fixed the amountToWithdraw in withdraw event

[33mcommit 0a6b1caad0716b57e1a8d54dfd07ae99087c5d22[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Oct 27 10:44:37 2020 +0100

    - Added comment to SECONDS_PER_YEAR constant

[33mcommit aba38a800fc0bcbf6d035faa231f2356960fd770[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Oct 27 10:36:02 2020 +0100

    Fixed event for the avg stable rate

[33mcommit 31a76ef047c4396099c029e7eacd631add4d5387[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Oct 27 10:31:32 2020 +0100

    Updated ILendingPool

[33mcommit bb6b322925cea8bf1aaf4f4b962e8b465dc9f3e7[m
Merge: af1311a 8a82c8f
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Oct 27 09:28:29 2020 +0000

    Merge branch 'feat/80-optimization-addresses-prov-reg' into 'master'
    
    Fixes #80
    
    Closes #80
    
    See merge request aave-tech/protocol-v2!89

[33mcommit af1311a5365f6c68f8a00d4ffeebdc6c8e71f4d5[m
Merge: 85168f8 c14ea74
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Oct 27 09:28:26 2020 +0000

    Merge branch 'feat/81-optimization-addresses-prov-reg' into 'master'
    
    Fixes #81
    
    Closes #81
    
    See merge request aave-tech/protocol-v2!90

[33mcommit e17f2ec814054a2094b665419207185e5aeac26c[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Oct 26 17:43:10 2020 +0100

    Added collateral enable and stable migration optimization.

[33mcommit 85168f8ea7a8916fef8042363b9fe9997013a820[m
Merge: d694a96 c44ed2c
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Oct 26 13:14:42 2020 +0000

    Merge branch 'fix/78' into 'master'
    
    Resolve "Extend flashloans to allow flashborrowing of multiple currencies"
    
    Closes #78
    
    See merge request aave-tech/protocol-v2!87

[33mcommit d694a961b5e2c1cf1fb90629d39b0b6262fc2b1b[m
Merge: ea66bf3 9c283fb
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Oct 26 13:14:28 2020 +0000

    Merge branch 'fix/79' into 'master'
    
    Resolve "Fix PVE006-2, PVE012, PVE013-1-2-3-4"
    
    Closes #79
    
    See merge request aave-tech/protocol-v2!88

[33mcommit d2b52ced8ff230d978bc977097ce7b8969de3935[m
Merge: 24d5c47 ea66bf3
Author: David Truong <david@truong.vc>
Date:   Mon Oct 26 13:29:59 2020 +0100

    Merge commit 'ea66bf317030bd8e4caf9fdfe5b3933adc187fcc' into feat/74

[33mcommit 24d5c4766f9ad5002a49f5381c6ca274371d0424[m
Author: David Truong <david@aave.com>
Date:   Mon Oct 26 13:27:31 2020 +0100

    [WIP] Adding onBehalfOf to flashloan

[33mcommit 9c283fb4cb28bbfa32c5cd454d08ca7fac17a3d3[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 26 12:14:33 2020 +0100

    Fixed PVE014

[33mcommit 7a8ed507f4ebae8e8d4d1c5d5d78ff7fb4a3eadd[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 26 11:59:49 2020 +0100

    Fixes PVE013-4

[33mcommit 5bd4fd0e13e85bfb0d11b3e76a5bb6a957f11c0f[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 26 11:58:57 2020 +0100

    Updated comment

[33mcommit 41592c4b48eb0366bb309ffc783a6b6c0ae5de71[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Oct 26 11:53:00 2020 +0100

    Fix package lock CI

[33mcommit c14ea749c467fc8b65b580d5891291e780b935e8[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Oct 26 11:18:56 2020 +0100

    - Optimized length load on _addToAddressesProvidersList().

[33mcommit 14c4b750e1bdbba7fa461718b5ece20f7144552a[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 26 11:18:25 2020 +0100

    Fixes PVE013

[33mcommit 8a82c8f1c0a0ccd4766d6d8fc067edbc932ea73a[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Oct 26 11:10:57 2020 +0100

    - Optimized getAddressesProvidersList() on addresses provider registry.

[33mcommit c5d7bb5e80e08a7c901cd7bb41b7bb839c2e0f0e[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 26 11:04:13 2020 +0100

    Fixed PVE011

[33mcommit 65dace00540564895cecfe7bc03ad80686c04f93[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 26 10:57:45 2020 +0100

    updated validation of validateRepay

[33mcommit 4b750850a2fe4253f2fb3ba4ce1e2345416c3eea[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 26 10:48:43 2020 +0100

    Fixes PVE006-2

[33mcommit 95b94e46e210d32a814cc379e7f03066801f12ad[m
Merge: e6be323 ea66bf3
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Oct 26 10:41:24 2020 +0100

    Merge master

[33mcommit c44ed2c0c7c54535456b7c88176efeeda97dce3e[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 26 10:35:44 2020 +0100

    Updated flashloan event

[33mcommit ea66bf317030bd8e4caf9fdfe5b3933adc187fcc[m
Merge: 5275d28 7b0a83f
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Oct 26 09:06:44 2020 +0000

    Merge branch 'fix/76-migration-scripts' into 'master'
    
    Resolve "Fix migration scripts: deployment and transaction not waiting for confirmation"
    
    Closes #76
    
    See merge request aave-tech/protocol-v2!85

[33mcommit 7b0a83fd8fe92ca74f63a3cc6352675a925150a3[m
Merge: c9df20f 5275d28
Author: The3D <emilio@aave.com>
Date:   Mon Oct 26 09:52:56 2020 +0100

    Merge branch 'master' into fix/76-migration-scripts

[33mcommit 5275d281d1eed5d7eb3df89f8c43a99520d4b415[m
Merge: 6142442 4e1a8c2
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Oct 26 08:42:24 2020 +0000

    Merge branch 'fix/73' into 'master'
    
    Resolve "PVE001, PVE002, PVE004, PVE006, PVE009"
    
    Closes #73
    
    See merge request aave-tech/protocol-v2!82

[33mcommit e6be323e511b820c52361660bd5689cf4733cd92[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Oct 23 18:41:52 2020 +0200

    Remove unneeded factory

[33mcommit 6398fe4260a10beff1dd299fb539e11f54ca71ff[m
Author: The3D <emilio@aave.com>
Date:   Fri Oct 23 18:41:08 2020 +0200

    Fix comments, tests

[33mcommit 1c7ce57b2bd28385059887fa6a4c0b46e1def964[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Oct 23 18:38:27 2020 +0200

    Aggregated deployments for initialization, atokens and debtTokens

[33mcommit b660f81baf1b7720f552dd6316f41e3f9a19c80d[m
Merge: a2e2450 6142442
Author: The3D <emilio@aave.com>
Date:   Fri Oct 23 18:29:23 2020 +0200

    Merge branch 'master' into fix/78

[33mcommit 59ccd2aac3bdf0567bdcda74c9443ab860555087[m
Author: pol <>
Date:   Fri Oct 23 16:56:30 2020 +0200

    mock swap addapter removed from everywhere

[33mcommit 5f6e6d9db43fc4f909099a9a0e5ecd52859f1900[m
Author: pol <>
Date:   Fri Oct 23 16:53:21 2020 +0200

    mockswapper removed

[33mcommit 4e1a8c29bd904b8dce47a8a7c83cf80d67fc6693[m
Author: The3D <emilio@aave.com>
Date:   Fri Oct 23 16:52:22 2020 +0200

    Fixed wad functions in WadRayMath

[33mcommit a3e1ae3268f3e23499d968367d9a7c7b7410931b[m
Author: pol <>
Date:   Fri Oct 23 16:36:11 2020 +0200

    removed buidler task

[33mcommit 9530dd115ddd89461259f67969f0c16c4ed027df[m
Author: pol <>
Date:   Fri Oct 23 15:20:29 2020 +0200

    added scenarios engine for subgraph testing

[33mcommit cbc188e62a6ab542950edc4c57f69be71238c393[m
Merge: 64df1ee c9df20f
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Oct 23 15:18:01 2020 +0200

    merge and add helper contracts

[33mcommit 86d25393e9cf18856f0d237f9057a525836f555b[m
Author: The3D <emilio@aave.com>
Date:   Fri Oct 23 13:09:19 2020 +0200

    Add small optimization in _mintToTreasury

[33mcommit 71262fbd5d97188eb8d5b37e62780eed14b6d95e[m
Author: pol <>
Date:   Fri Oct 23 13:08:58 2020 +0200

    updated package lock

[33mcommit 1384afa534cc4231a651f202a401320a66bd4b5a[m
Merge: 1382587 6142442
Author: pol <>
Date:   Fri Oct 23 13:04:09 2020 +0200

    merged conflicts

[33mcommit eaad21d8b4dcbf23b0a3b1b4caa42fcb051c321e[m
Merge: dadebe9 6142442
Author: The3D <emilio@aave.com>
Date:   Fri Oct 23 12:28:43 2020 +0200

    Merge branch 'master' into fix/73

[33mcommit 614244272e0ee802f324f30bc93b9f0054d50f34[m
Author: The3D <emilio@aave.com>
Date:   Fri Oct 23 12:20:06 2020 +0200

    Added the gas reporter

[33mcommit dadebe9d2cc4683cdc114e0195c2fec4189066ab[m
Author: The3D <emilio@aave.com>
Date:   Fri Oct 23 10:57:22 2020 +0200

    Updated optimization

[33mcommit a2e2450bb351844086f749ee24c005df03bc0e4a[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 22 20:37:50 2020 +0200

    Finalized implementation, fixed tests

[33mcommit 302a19a1bc63bb167bebf0766ec369a1f187db88[m
Merge: d4abc12 cdcb5c7
Author: The3D <emilio@aave.com>
Date:   Thu Oct 22 19:20:57 2020 +0200

    Merge branch 'master' into fix/73

[33mcommit af99c88b70956eccfec0cea8f16cfe7a6e238d64[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 22 19:20:19 2020 +0200

    Added error constant

[33mcommit d4abc123492f637ef12a3e424c3360db5694fdf6[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 22 19:06:37 2020 +0200

    Updated wadDiv

[33mcommit d05a2d1c4fecb55c280a387340731ba11a51103b[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 22 18:59:15 2020 +0200

    Rolled back PVE002, added further optimization

[33mcommit 64df1eeb361eda85fa2c0b79aaad2ce658d7131a[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 22 18:27:23 2020 +0200

    Removed mock swap

[33mcommit fd61ab901843f331677868fa9503bc40cd12559c[m
Merge: 3b2b843 cdcb5c7
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 22 18:17:24 2020 +0200

    Merge master

[33mcommit 8873b9cdacf9cf6f91327af84abb8a25fe751cb7[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 22 18:15:56 2020 +0200

    initial implementation

[33mcommit 3b2b843b7b8fc8139ff943c752c9cbe8f4f86fe8[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 22 18:14:56 2020 +0200

    Fixes typings errors.

[33mcommit cdcb5c7d31e9ae3987f5a73d171b39b095ddedfb[m
Merge: 7ddf18b b7efa92
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Oct 22 16:14:49 2020 +0000

    Merge branch 'fix/77' into 'master'
    
    Resolve "Remove repayWithCollateral and swapLiquidity"
    
    Closes #77
    
    See merge request aave-tech/protocol-v2!86

[33mcommit bb0df7344984e75286e28768fdc4468b19a8ae79[m
Merge: 60c93a4 7ddf18b
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 22 17:32:50 2020 +0200

    WIP test erroring

[33mcommit b7efa920ca21c4f5c67c471c3ea6e27921bfb013[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 22 11:50:04 2020 +0200

    Remove swapLiquidity/repayWithCollateral

[33mcommit c9df20f74d2c1e1eb2c5ca536fb7c1524c96b653[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 22 11:27:45 2020 +0200

    Added .env support for docker-compose.yml. Add --verify again to package.json kovan script

[33mcommit 9496af645540f864d3880bd7f70f5667a8b8ed0b[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 22 11:17:21 2020 +0200

    Replace compilation for glob file finder. Stop verify if it finds a critical error.

[33mcommit 76031c878f74459a280fcd5c69e587ab86f27a9c[m
Author: The3D <emilio@aave.com>
Date:   Wed Oct 21 13:35:52 2020 +0200

    Fixed console messages

[33mcommit d864836ec5e90f15b2717860e31398adf92556e6[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 21 11:50:54 2020 +0200

    Added waitForTx for lendingpoool

[33mcommit 4ee41dbece2e286e06340e9f7d7ce44ff2ca22bc[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 21 11:42:27 2020 +0200

    Added waitForTx to missing methods.

[33mcommit 13825879cb122151c62c7e0e53d9378206d37e39[m
Merge: 258b70f 7ddf18b
Author: pol <>
Date:   Tue Oct 20 15:34:16 2020 +0200

    merged with master

[33mcommit 258b70fad318f38939afc36288b0dd56ab312254[m
Author: pol <>
Date:   Tue Oct 20 15:19:41 2020 +0200

    cleaned code

[33mcommit 4e951147c25ee3c81bc15e3c9c07cd955dad0125[m
Author: pol <>
Date:   Tue Oct 20 12:54:17 2020 +0200

    added type method on aggregator

[33mcommit 7ddf18b823fcdb37f9c3688cf097d31e5f78d3e1[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 20 12:19:07 2020 +0200

    Updated migration scripts to add custom proxy price providers

[33mcommit 19756cdbe8507d888b698d48c2f6d670725fd7db[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Oct 19 18:29:32 2020 +0200

    fixed PVE001, PVE009(1)

[33mcommit 3575d58ff43ffa751b026681bd3d4ebbcbc0aea8[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Oct 19 16:24:49 2020 +0200

    unified interface of stable, variable debt tokens and aTokens

[33mcommit 1dd92aed6712ce9f1e3673b2b69882ee7ac5488c[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Oct 19 15:52:56 2020 +0200

    fixes PVE006

[33mcommit bdac7b0d41549c43c314e5c0fe84594d35894904[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Oct 19 15:45:35 2020 +0200

    Fixes PVE004

[33mcommit b57a59ea6d1e8c24e14adc3eecdf45c86be9d0f0[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Oct 19 15:40:19 2020 +0200

    Fixes PVE002

[33mcommit e0f5c5fb7f5a4e6a5a592ba008b5a263f684d316[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Oct 19 15:29:42 2020 +0200

    Fixes PVE002

[33mcommit 5509e442d5a29e239c815fa2b37550503f72a396[m
Author: pol <>
Date:   Mon Oct 19 13:55:40 2020 +0200

    removed redeployment of protocol for the flow

[33mcommit a2127a5b56ebdd78e29b22b9aac96b1e9fe67c1a[m
Author: Shelly Grossman <shellygr151@gmail.com>
Date:   Mon Oct 19 14:15:33 2020 +0300

    runner script for stable token

[33mcommit bd42a8cfa5a51c6a214261ad007fa840c834362a[m
Author: pol <>
Date:   Mon Oct 19 12:03:47 2020 +0200

    added script to deploy docker net

[33mcommit c8cd61ee61ef9cf1fd277678389740cf7bf6fd16[m
Merge: 30d9ee9 a4468c0
Author: pol <>
Date:   Mon Oct 19 11:01:27 2020 +0200

    merged with master branch

[33mcommit a4468c0a97002d68726bcbb15ff68ba4aaa5e7f7[m
Merge: 87afdb9 bb234fb
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Oct 19 08:58:39 2020 +0000

    Merge branch 'fix/72' into 'master'
    
    Resolve "Fix liquidation call event"
    
    Closes #72
    
    See merge request aave-tech/protocol-v2!81

[33mcommit bb234fbc7c358173da9296fc6ad393cd38f123f1[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Oct 19 10:55:45 2020 +0200

    fixed #72

[33mcommit 30d9ee90d065aefaebceb66ff520301033a76b3e[m
Author: pol <>
Date:   Mon Oct 19 10:45:27 2020 +0200

    basic flow migration working

[33mcommit 87afdb9e977146e26fa1c9bc5a20502fa226cf34[m
Merge: 017589a 765acdb
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Oct 19 08:34:39 2020 +0000

    Merge branch 'fix/71' into 'master'
    
    Resolve "Fix oracles deployment"
    
    Closes #71
    
    See merge request aave-tech/protocol-v2!80

[33mcommit 765acdb540d826aa80c7530662308090792a8dc0[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Oct 19 10:31:53 2020 +0200

    Fixed WBTC address

[33mcommit 8de8727f66dce8d7091633429aa764b4382b105a[m
Author: pol <>
Date:   Fri Oct 16 17:41:31 2020 +0200

    WIP: basic flow

[33mcommit dc0d02157280fe102a3959044036a59b9f332ecc[m
Author: The3D <emilio@aave.com>
Date:   Fri Oct 16 13:49:45 2020 +0200

    removed the oracles deployment task

[33mcommit 60c93a4d7312ae11bbb3b3961c6fb21161c14419[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Oct 16 12:07:35 2020 +0200

    Remove debug console.logs

[33mcommit 628f0de639124327e29eb748aa07e9d151fdb5a9[m
Merge: 017589a e0627ce
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Oct 16 11:50:51 2020 +0200

    Merge branch 'feat/66' into 67-use-factory-functions

[33mcommit e0627ce66bbc1af5ea714d30752ce6bf935138c0[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Oct 16 11:27:09 2020 +0200

    Added correct library placheholder hashes. Fix imports.

[33mcommit 017589a8f7177a271e5555835ebb1523efe2e044[m
Merge: 7a076a8 1b1fd6e
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 16 08:05:11 2020 +0000

    Merge branch 'fix/68' into 'master'
    
    Resolve "Gas optimizations"
    
    Closes #68
    
    See merge request aave-tech/protocol-v2!77

[33mcommit 7a076a8d11404a7bc5ff12cad0508e05b05bb74f[m
Merge: 5660a77 b4f8592
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 16 07:08:38 2020 +0000

    Merge branch 'fix/69' into 'master'
    
    Resolve "Fix Peckshield evidence PVE016: Business logic in validateWithdraw()"
    
    Closes #69
    
    See merge request aave-tech/protocol-v2!78

[33mcommit 7556f25c1a454e1f1c775e187e0f7d00df4288bc[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 15 20:28:12 2020 +0200

    Moved all deployments outside of helpers with wrapper.

[33mcommit 03504849f1396688855c0fe7518eb5bdcba2fee1[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 15 19:19:02 2020 +0200

    Deployment function optimizations WIP

[33mcommit b4f8592775f41e9e52e0068b3c531a08d0b8750c[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 15 17:57:54 2020 +0200

    Fixed #69

[33mcommit 5660a7767fc0a947150e04c5446c90c9efac504b[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 15 17:52:52 2020 +0200

    Revert "Fixes #69"
    
    This reverts commit 97b014a429c5547000a006960a8170f56ecdb3b1.

[33mcommit 97b014a429c5547000a006960a8170f56ecdb3b1[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 15 17:41:59 2020 +0200

    Fixes #69

[33mcommit 81df469a3e00229760361995df72c054056229b2[m
Merge: a12f871 e4dc67e
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Oct 15 15:23:03 2020 +0000

    Merge branch 'feat/rm-unused-imports' into 'master'
    
    Resolve "Remove unused imports"
    
    Closes #65
    
    See merge request aave-tech/protocol-v2!73

[33mcommit e4dc67ec7acd1ddfe34094ed19898ace8ce3f620[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 15 17:20:22 2020 +0200

    Updated test error messages

[33mcommit 6a06a3e88f02a8feecf72f49f16c860e639f144c[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 15 15:41:56 2020 +0200

    removed openzeppelin imports2

[33mcommit 937fb1df93febae551e717d01e4ed36add005e92[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 15 15:25:27 2020 +0200

    Folders reorg

[33mcommit 86ddf25a3a3f34ada3076b901e3dd159a5dd126f[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 15 15:16:05 2020 +0200

    Reorganized folders

[33mcommit 46bcf4b821a9cd386c28f783bd14a5dfac669f0a[m
Merge: b919886 a12f871
Author: The3D <emilio@aave.com>
Date:   Thu Oct 15 14:29:51 2020 +0200

    Merge branch 'master' into feat/rm-unused-imports

[33mcommit 1b1fd6e5e2eac4ca00bdf938d46c0fa1f6f918c1[m
Author: The3D <emilio@aave.com>
Date:   Thu Oct 15 14:13:46 2020 +0200

    Fixes #68

[33mcommit 88a2cb21f4a7d6fcb32d608a20b720022e065edc[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 15 13:57:03 2020 +0200

    Move contract getters to their own file. Use factory connect. Fix imports

[33mcommit a12f87195339965423ff5564b1d2b7e51035f467[m
Merge: 50760a3 1ca88ec
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Oct 15 07:39:13 2020 +0000

    Merge branch 'fix/62' into 'master'
    
    Resolve "Replace getters from LendingPool"
    
    Closes #62
    
    See merge request aave-tech/protocol-v2!70

[33mcommit 479aa3ef8e1172aa9c43e3d2151e1e884a8c2180[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Oct 15 09:38:46 2020 +0200

    Updated numbers

[33mcommit 50760a3036431603537cb2e11a9d3e59f18806e1[m
Merge: 20da932 45f3c26
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Oct 15 07:37:28 2020 +0000

    Merge branch 'fix/64' into 'master'
    
    Resolve "Optimize the proxies to remove state loads from the admin"
    
    Closes #64
    
    See merge request aave-tech/protocol-v2!71

[33mcommit 224712f9d5cee8b4a4c37af6b4a5d0ee46b540bd[m
Author: pistiner <59415933+orpistiner@users.noreply.github.com>
Date:   Thu Oct 15 00:59:12 2020 +0300

    Aave integration - first step

[33mcommit 0a1c656cc1de5b653b3b1d8db0c7d057cc8499b6[m
Merge: e35882b 1ca88ec
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Oct 14 17:12:49 2020 +0300

    Merge branch 'fix/62' into feat/data-helpers

[33mcommit e35882b6cb4173a5eb806d46b7cd2564e12ee090[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Oct 14 16:54:22 2020 +0300

    initial version

[33mcommit 1ca88ec0ae7232abdac8bd596732f07054b23ce9[m
Author: The3D <emilio@aave.com>
Date:   Wed Oct 14 14:34:17 2020 +0200

    Fixed comment on getUserConfiguration

[33mcommit c181ed02e46fbf43678521ef7ccc5d9dec196cfc[m
Author: The3D <emilio@aave.com>
Date:   Wed Oct 14 14:24:01 2020 +0200

    Fixed configurator

[33mcommit 45f3c2613922dce5e79bb7d679a430e59e8afb98[m
Author: The3D <emilio@aave.com>
Date:   Wed Oct 14 13:55:38 2020 +0200

    Removed ERC20 proxy

[33mcommit 57ffc9c6139132fd69eb48fd034ffe081ee4f80e[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 14 11:03:32 2020 +0200

    Reorg errors library, sorted by error number, added prefix to each constant and a prefix glossary.

[33mcommit b919886916236ae9169d829c9f24eb030fbc7b86[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Oct 14 09:53:48 2020 +0200

    Remove unused imports

[33mcommit 645ecb214b0660880f63fee0a2d3cfd7565b49e5[m
Merge: 1b4bc6f 20da932
Author: The3D <emilio@aave.com>
Date:   Tue Oct 13 16:43:30 2020 +0200

    Merge branch 'master' into fix/64

[33mcommit 543c3f5c9c8d40934114f35e3d16923ccb71c039[m
Merge: aea61d5 20da932
Author: The3D <emilio@aave.com>
Date:   Tue Oct 13 13:41:57 2020 +0200

    Merge branch 'master' into fix/62

[33mcommit 20da932c110721bc7369efc58354ed252003b484[m
Merge: fc9b096 9031da2
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Oct 13 11:24:51 2020 +0000

    Merge branch 'feat/18' into 'master'
    
    Resolve "Testnet/Mainnet migration scripts"
    
    Closes #18
    
    See merge request aave-tech/protocol-v2!19

[33mcommit 1b4bc6f855da7ce5ca3b0a4fd6bcd7adc35c3efc[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 13 13:21:11 2020 +0200

    Added ERC20 proxy

[33mcommit 6839be6dca68c3c2b06b62103de7c0e9473bf873[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 13 10:38:22 2020 +0200

    Updated addresses provider, configurator

[33mcommit 94c9b7156cc9504f9b02c1207b169a254222847f[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 13 10:35:06 2020 +0200

    Added InitializableImmutableAdminUpgradeabilityProxy

[33mcommit d681a212722475125973db757839930d47324419[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 13 10:28:52 2020 +0200

    Added immutable proxies

[33mcommit aea61d57abbb6cf11bbbdc37fc46a1a4cfe01cd8[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 12 20:07:17 2020 +0200

    Fixed tests code

[33mcommit 9031da2c2c76e2c1e83827b58b563659f55847fe[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 12 15:42:32 2020 +0200

    Added env variables mapping

[33mcommit 0a203dc6f15a204743e930d496fef775b73790fc[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 12 15:20:38 2020 +0200

    Added .env to gitignore

[33mcommit 53d61147756cc1c68cccb17661a2f12436b68bc4[m
Merge: 83b8c97 fc9b096
Author: The3D <emilio@aave.com>
Date:   Mon Oct 12 15:19:27 2020 +0200

    Merge branch 'master' into feat/18

[33mcommit fc9b096f238e02d493e9c7dd80edea3adb3b400a[m
Merge: 024def0 80bdb0f
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Oct 12 13:11:38 2020 +0000

    Merge branch 'fix/60-flashloan-attack' into 'master'
    
    Fixes #60
    
    Closes #60
    
    See merge request aave-tech/protocol-v2!68

[33mcommit fb9f981efaea6f9a83074e95357bdd6cffe35a6c[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 12 15:10:16 2020 +0200

    Added getUserReserveData to test helpers

[33mcommit b450a0464212414d7064b50b43ccbb4e47f10d87[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 12 14:37:53 2020 +0200

    Added getter for userconfiguration

[33mcommit 645ea913b0fc25c8f808c8d388f0557de5422e0c[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 12 14:25:03 2020 +0200

    Moved accessors to AaveProtocolTestHelpers

[33mcommit 80bdb0f2b206db17e9e649a5a1bc61f761acfa78[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Oct 12 12:00:49 2020 +0200

    Changed return of executeOperation() to bool, as the amount is never used.

[33mcommit be517ad960c8e937e3a136cf2629c31cc29729e8[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 12 11:23:18 2020 +0200

    Added memory accessors to reserveConfiguration

[33mcommit 4b35df5c4cecd51e09ec9028510932a86283714a[m
Merge: 40ff898 024def0
Author: The3D <emilio@aave.com>
Date:   Mon Oct 12 10:50:33 2020 +0200

    Merge branch 'master' into fix/62

[33mcommit 40ff898011ac686aed4ed2f70a1a8a42b42018df[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 12 10:50:06 2020 +0200

    Refactored LendingPool

[33mcommit 024def04b50097ef3663c8e6e00ab8b493551d62[m
Merge: a7861f8 3ad9e7b
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Oct 12 08:19:07 2020 +0000

    Merge branch 'fix/56' into 'master'
    
    Resolve "Validate divison in the aToken/variable debt token to ensure it's not rounded down to 0"
    
    Closes #56
    
    See merge request aave-tech/protocol-v2!64

[33mcommit 44ba72540c1e8cc598ce86731e2c73e56770a02c[m
Author: The3D <emilio@aave.com>
Date:   Fri Oct 9 17:59:10 2020 +0200

    Updated configurator, LendingPool interface

[33mcommit 640f30c7861f2a772c70276267dfd762f0ae2dca[m
Author: The3D <emilio@aave.com>
Date:   Fri Oct 9 16:35:02 2020 +0200

    Removed getters

[33mcommit 83b8c979d03bf1739265f200665fcfe913f0d1bf[m
Merge: d150458 a7861f8
Author: The3D <emilio@aave.com>
Date:   Fri Oct 9 10:21:58 2020 +0200

    Merge branch 'master' into feat/18

[33mcommit a7861f8cbaa2049ec047b22713628b297d608831[m
Merge: 7a0d201 3439198
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Fri Oct 9 08:08:22 2020 +0000

    Merge branch 'fix/61' into 'master'
    
    Resolve "Fix stable rate token events"
    
    Closes #61
    
    See merge request aave-tech/protocol-v2!69

[33mcommit 3439198ec37e1397047c83a44e20b4d499da1cd0[m
Author: The3D <emilio@aave.com>
Date:   Fri Oct 9 10:03:50 2020 +0200

    fixed events in the token contract

[33mcommit cb6603f8a7073cf60be8de7b189750eefeac299b[m
Author: The3D <emilio@aave.com>
Date:   Fri Oct 9 10:00:55 2020 +0200

    fixes interface

[33mcommit d150458604cba5171b8199e511bb030d6a0f3e8d[m
Merge: ffc81df 7a0d201
Author: The3D <emilio@aave.com>
Date:   Thu Oct 8 15:41:48 2020 +0200

    Merge branch 'master' into feat/18

[33mcommit 7a0d201f006fd9667959c49f789dc8bb7e09dc08[m
Merge: 5ddd98c 9fdfc8b
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Oct 8 12:24:04 2020 +0000

    Merge branch 'fix/58' into 'master'
    
    Resolve "Optimize the reading of the list of reserves by replacing the array with a mapping"
    
    Closes #58
    
    See merge request aave-tech/protocol-v2!66

[33mcommit 5ddd98c52993cbe0093e4a32d14d2aec62939f00[m
Merge: f435b2f f3852d7
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Oct 8 08:55:35 2020 +0000

    Merge branch 'fix/53-borrowing-mask' into 'master'
    
    Fixes #53
    
    Closes #53
    
    See merge request aave-tech/protocol-v2!63

[33mcommit 273070fada1a7d91631f1f3c63f61b41dbee3139[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Oct 7 16:20:32 2020 +0200

    Added return uint256 validation to flashLoan()

[33mcommit 9fdfc8bf26e94ec230889502cc92477dbd37bde7[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 18:20:44 2020 +0200

    Added check if the reserve was already added

[33mcommit 24a4980496b5ac5d3cf09b5660560fb320b4aeb2[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 15:51:48 2020 +0200

    Refactored reservesList to a mapping

[33mcommit f3852d7081e5bb40e6df84f6b9de83a774f30fde[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 11:36:29 2020 +0200

    Updated test on liquidation bonus

[33mcommit b88bdc8c2c47930e94b35d23da796bf4573c1bde[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 11:34:50 2020 +0200

    updated test on liquidation threshold, reserve factor

[33mcommit d77e5ce5be2a4814ffa960a7c3634563f555bc9b[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 11:30:10 2020 +0200

    Added test on disable stable borrow rate

[33mcommit b30ccd6dd288e39a2c8a42ee2b71dddfcd0e78ed[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 11:28:46 2020 +0200

    Added test on disable stable borrow rate

[33mcommit 35db5833faab26aa2c1e67386b7d3e756546f576[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 11:27:53 2020 +0200

    Added test on disable stable borrow rate

[33mcommit 3fd4003aa039c1aa44673ae8415f1e5a3d05dc6c[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 11:20:45 2020 +0200

    Added test on deactivate as collateral

[33mcommit 450cdfa95c197d8d44f8c3fed70095b84e3c49f2[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 11:03:51 2020 +0200

    Updated tests on enableBorrowingOnReserve

[33mcommit bad45772c145f0b431cef39d0324cd2fe3dba5dc[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 11:02:34 2020 +0200

    Updated tests on unfreeze

[33mcommit 4d991e6709729f696cea234bb1ccfe858d100cd8[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 10:59:33 2020 +0200

    Updated tests on freeze, borrowingEnabled

[33mcommit e86cf9fe0a12552ffef0b43da397352dd5813a76[m
Author: The3D <emilio@aave.com>
Date:   Tue Oct 6 10:23:02 2020 +0200

    Fixes liquidation bonus mask, adds comment on reserved bits

[33mcommit 3ad9e7b9e01c4d639bc587ff32b8eb6820880cb3[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 5 13:12:58 2020 +0200

    Added natspec comment to mintToTreasury

[33mcommit c45d6c254bd66a2a29ac88e50ba850f926b9bd60[m
Author: The3D <emilio@aave.com>
Date:   Mon Oct 5 13:11:53 2020 +0200

    fixes #56

[33mcommit 5a67250743ba42cc4a1097b0fffd828a9e17714e[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 30 18:03:34 2020 +0200

    fixed error code

[33mcommit 758675c132ae74fb99b2bb293ecd193159d3fd91[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 30 17:59:47 2020 +0200

    Fixes tests

[33mcommit b907b6b0b3ad1bedf61273d9ce38ced4c4748892[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 30 17:40:47 2020 +0200

    Initial fix

[33mcommit d56a7a27797dedae3822e0ae914be469c2733eda[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Sep 30 11:24:22 2020 +0200

    Misc changes on ReserveConfiguration:
      - Fixed unprecise STABLE_BORROWING_MASK.
      - Added constant for start bit positions of the different configurations.

[33mcommit f435b2fa0ac589852ca3dd6ae2b0fbfbc7079d54[m
Merge: 479f6f6 3343769
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Sep 30 08:32:50 2020 +0000

    Merge branch 'feat/52-getter-setter' into 'master'
    
    Fixes #52
    
    Closes #52
    
    See merge request aave-tech/protocol-v2!61

[33mcommit 33437695107853a68a3d9f72208f2bcc59024d9e[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 29 17:00:51 2020 +0200

    - Added setter tests for setAddress() on LendingPoolAddressesProvider

[33mcommit 099532ee48cd35d7669c995839ee56f8ec265ed9[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 29 16:31:21 2020 +0200

    - Added general setter and getter of address to LendingPoolAddressesProvider.
    - Adapted style of LendingPoolAddressesProviderRegistry, adding public getter function in the process.

[33mcommit 948bd960be1bc345b2c54171271717039e0e076f[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Sep 28 19:33:39 2020 +0200

    Initial commit

[33mcommit 479f6f6b724d2d9d6b3e6f766e5cb191bc45ca74[m
Merge: 12d97f9 6d1fede
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 28 14:37:03 2020 +0000

    Merge branch 'fix/50-check-on-balancedecreaseallowed' into 'master'
    
    Resolve "Fix: Check on balanceDecreaseAllowed() if the reserve liquidation threshold is 0, not the ltv"
    
    Closes #50
    
    See merge request aave-tech/protocol-v2!59

[33mcommit 6d1fede2c9a129b11937fb8b0454f6b3f26cfe4d[m
Author: The3D <emilio@aave.com>
Date:   Fri Sep 25 13:48:42 2020 +0200

    Removed selected scenario from the scenario file

[33mcommit f0191909a247079c9746dcc003745feb67588e63[m
Author: The3D <emilio@aave.com>
Date:   Fri Sep 25 11:51:35 2020 +0200

    Added more setUseReserveAsCollateral() scenarios tests

[33mcommit 35044941b034b18e4ef8e6a1347410fe01ef9220[m
Author: The3D <emilio@aave.com>
Date:   Fri Sep 25 11:20:12 2020 +0200

    Fix test related to the LTV change

[33mcommit e328cf048214d8eaaaa7e0f46fde62c102c32cc5[m
Author: The3D <emilio@aave.com>
Date:   Fri Sep 25 10:57:51 2020 +0200

    Formatting, removed console import

[33mcommit 687b13f019b02fa6e8bd6630725c216abeedccc3[m
Author: The3D <emilio@aave.com>
Date:   Fri Sep 25 10:57:26 2020 +0200

    Formatting, removed console import

[33mcommit fb0f533ae9d6f24be79f9e7af703bf789b12d143[m
Author: The3D <emilio@aave.com>
Date:   Fri Sep 25 10:55:58 2020 +0200

    Changes usage of the ltv in calculateUserAccountData

[33mcommit 6e7787d23c07e8d55a2a2ccb78af4f2f3536975c[m
Author: The3D <emilio@aave.com>
Date:   Thu Sep 24 18:20:17 2020 +0200

    initial fix

[33mcommit ffc81df4eefd0cb31c4844292ae5d0ed6d63a3af[m
Merge: 6cbcf39 faf1560
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Sep 24 17:48:29 2020 +0200

    Fix conflicts and renamings

[33mcommit 12d97f9f13a3f04c206c6a72b93c23126b869572[m
Merge: ee0bc07 6ee4b27
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Sep 24 10:04:07 2020 +0000

    Merge branch 'fix/48-interest-rates-calculation' into 'master'
    
    Resolve "Fix issue on the calculation of the interest rate on swapCollateral"
    
    Closes #48
    
    See merge request aave-tech/protocol-v2!57

[33mcommit 6ee4b2725ba698894103a3e6ee1c55ec89cf5950[m
Author: The3D <emilio@aave.com>
Date:   Thu Sep 24 10:00:17 2020 +0200

    Fix order of calculation of the interest rates

[33mcommit ee0bc07238849b51597d2a98521bfb8d12a5a1fa[m
Merge: 8901646 4e25657
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Sep 24 07:40:00 2020 +0000

    Merge branch 'fix/47' into 'master'
    
    Resolve "Fix transferFrom() on flashLoan()"
    
    Closes #47
    
    See merge request aave-tech/protocol-v2!56

[33mcommit 8901646f3cb6039ecb21ea867858be0bfb7646b7[m
Merge: f756f44 7be723c
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Sep 24 07:38:56 2020 +0000

    Merge branch 'fix/46' into 'master'
    
    Resolve "improve test coverage of the AddressesProviderRegistry"
    
    Closes #46
    
    See merge request aave-tech/protocol-v2!55

[33mcommit 7be723c773a05ec31027d77a552ac03fc2676d84[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 23 17:59:43 2020 +0200

    Adds 100% test coverage to the addressesProviderRegistry

[33mcommit 4e25657731da17bd854707a0ef0f52823add0b81[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 23 15:19:21 2020 +0200

    Updated transferFrom in repayWithCollateral() and swapLiquidity()

[33mcommit d724d1f58f88537d05c55d7661d80e87a6f87ffb[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 23 14:39:17 2020 +0200

    Fixed comment

[33mcommit 7c6034db674a75d27d58abfb30317ae2cbedf465[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 23 12:57:48 2020 +0200

    Fixes the flashloan transferFrom()

[33mcommit 7c892ec4ba658fbb9a5389efc6147e97a65f3125[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 23 12:34:53 2020 +0200

    added test on removal of an addresses provider

[33mcommit 2a5547570c274990ea2aeb9cec86bf466f598572[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 23 11:25:35 2020 +0200

    Adds another addresses provider test

[33mcommit 06d16c6abf7ff2cf57548ac3ab3095cfeaf52e6f[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 23 11:21:49 2020 +0200

    Added initial test for the registry

[33mcommit f756f44a8d6a328cd545335e46e7128939db88c4[m
Merge: ed4e54d 12f1dbd
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 21 20:14:34 2020 +0000

    Merge branch 'fix/45' into 'master'
    
    Resolve "Update rebalance conditions"
    
    Closes #45
    
    See merge request aave-tech/protocol-v2!54

[33mcommit 12f1dbd0dcebdaf9e6f9a140c4e1ec3fec7ccd8d[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 22:08:44 2020 +0200

    Readded calculateAvailableBorrowsETH

[33mcommit 2e30bb8b858bd33c00df00b74ca797947747cccb[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 21:15:12 2020 +0200

    Fixed error on rebalance conditions, changed style of internal functions

[33mcommit 332cdff67a20bd3d57094568a2fd8138868e97f5[m
Merge: 75579e5 ed4e54d
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 20:38:15 2020 +0200

    Merge branch 'master' into fix/45

[33mcommit ed4e54d4c3d1fd5b944c79f516f4b6a5dde6f92c[m
Merge: a6fbea8 45e4e0b
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 21 18:34:31 2020 +0000

    Merge branch 'fix/42' into 'master'
    
    Resolve "Ensure that no more than 128 assets can be added to the reserve"
    
    Closes #42
    
    See merge request aave-tech/protocol-v2!53

[33mcommit 45e4e0b5fe4062caca0d2ecc1889ad6ed02c164e[m
Merge: 5c2ec07 a6fbea8
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 20:27:14 2020 +0200

    Merge branch 'master' into fix/42

[33mcommit 75579e5d28d677d9c7f2768c38baf1011ecafae4[m
Merge: 07db321 a6fbea8
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 20:19:28 2020 +0200

    Merge branch 'master' into fix/45

[33mcommit 07db321b4dc7abedc3150f71acbe32db8e306a84[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 19:52:22 2020 +0200

    updated rebalance conditions,tests

[33mcommit a6fbea8a22eceab8f78a052f3724d7d415c8b2fe[m
Merge: a960e43 c346251
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 21 17:40:57 2020 +0000

    Merge branch 'fix/34' into 'master'
    
    Resolve "Refactor variable debt token and stable debt token, add reserve factor"
    
    Closes #34
    
    See merge request aave-tech/protocol-v2!42

[33mcommit c346251df03b192897215c6185870e0aa982a134[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 18:51:51 2020 +0200

    Added comments

[33mcommit c278832e5a32dd0208464fe1680ee1ba659215fd[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 17:59:44 2020 +0200

    Removed unused error code

[33mcommit e348c334e3d05cc3cd1e614f1f3903a88f3bc8d2[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 17:58:02 2020 +0200

    Cleaned up aToken, debt tokens code

[33mcommit 9d1c13cf960f48af7dfce0a5b61fcafddda4db42[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 17:41:38 2020 +0200

    added events to mintToTreasury()

[33mcommit 2ebe34a051331ca0abc8d99f90e5b8d1b27c8745[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 16:11:14 2020 +0200

    removed userIndex from variabledebttoken

[33mcommit 8ed9b88163e51e115e9cf94b9bca98035ca0b0a4[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 16:07:26 2020 +0200

    fixed last tests on repayWithCollateral

[33mcommit b7c4a255a96815f65287e24f7e482b0ff04b522c[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 15:58:19 2020 +0200

    Refactored aToken

[33mcommit 56be9304c24ff0f1f4246248ac45147a176bb3fd[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 15:52:53 2020 +0200

    Fixed rebalance rate tests

[33mcommit 6f9ff11e497dc5688b67a1cb8d205d439e0dbefe[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 15:35:22 2020 +0200

    Fixed credit delegation tests

[33mcommit a1a45d392a7bb1b0e7b1d0781825b4600c536f1e[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 15:27:53 2020 +0200

    Updating rebalance rate tests

[33mcommit 8792515f5b45907323b304e63b1b80fe20d05e25[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 14:29:59 2020 +0200

    fixed swap rate mode tests

[33mcommit c8b044aecfdd5a2f208840b1d887d12c92f480ba[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 12:29:33 2020 +0200

    Fixed borrow tests

[33mcommit f188a212215e9c1ea9a71a93cec33d1e1ac70c9b[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 10:12:04 2020 +0200

    Fixed deployed-contracts

[33mcommit c7f0dfbaa943cdbac912b67a143e33803bbf69f6[m
Merge: 52033ba a960e43
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 10:03:18 2020 +0200

    Merge branch 'master' into fix/34

[33mcommit a960e43dcfbd6e0b27de17d54f3117b91294ed16[m
Merge: 5c6a8b0 7c5de62
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Sep 21 07:35:16 2020 +0000

    Merge branch '40-refactor-the-storage-of-lp' into 'master'
    
    Resolve "Refactor the storage of lendingpool to LendingPoolStorage parent contract"
    
    Closes #40
    
    See merge request aave-tech/protocol-v2!51

[33mcommit 7c5de62910be52ab81b6d663ef7cb933b86d5b75[m
Merge: 77c812b 5c6a8b0
Author: The3D <emilio@aave.com>
Date:   Mon Sep 21 09:31:54 2020 +0200

    Merge branch 'master' into 40-refactor-the-storage-of-lp

[33mcommit 52033bae21518bbed67ef54a9142cd3d4c3655b0[m
Author: The3D <emilio@aave.com>
Date:   Fri Sep 18 18:03:38 2020 +0200

    Added console logs

[33mcommit 5868a4844fd4bae919ace682cb5a1a40c16f36e3[m
Author: The3D <emilio@aave.com>
Date:   Fri Sep 18 17:56:33 2020 +0200

    Updated testsW

[33mcommit 13f6c264b3b65f3e514c98b18343e24787447a0d[m
Author: The3D <emilio@aave.com>
Date:   Thu Sep 17 19:05:22 2020 +0200

    Partially fixed repay tests

[33mcommit 72e2102529b9c9659f36fc11221e1d769f824c83[m
Author: The3D <emilio@aave.com>
Date:   Thu Sep 17 16:40:23 2020 +0200

    removed other console.log

[33mcommit 6df8a7a6e0050de79aa4ca299cf196ced5f86ce4[m
Author: The3D <emilio@aave.com>
Date:   Thu Sep 17 16:38:15 2020 +0200

    Removed console.log

[33mcommit bfe0657b1aa05d6a250d2c65cca794c2e827297e[m
Author: The3D <emilio@aave.com>
Date:   Thu Sep 17 16:37:51 2020 +0200

    Updated code to fix deposit and withdraw tests

[33mcommit e4890a14c2ae7f30915e9cd6bfe2a9a71d1505e1[m
Merge: 5b38bb1 5c6a8b0
Author: The3D <emilio@aave.com>
Date:   Thu Sep 17 11:55:38 2020 +0200

    Merge branch 'master' into fix/34

[33mcommit 5c6a8b0926a80c27ab89b213d383f2114144ddf6[m
Merge: d06e3a3 faf1560
Author: The3D <emilio@aave.com>
Date:   Thu Sep 17 11:52:27 2020 +0200

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2

[33mcommit 5b38bb144b3025fe6fcc9f25fe23e00e5390db87[m
Author: The3D <emilio@aave.com>
Date:   Thu Sep 17 11:52:10 2020 +0200

    Updated borrow calculations on scenarios

[33mcommit 7986a4704b98b3fa0f63fefc8f2fce01feb48426[m
Author: The3D <emilio@aave.com>
Date:   Thu Sep 17 10:53:55 2020 +0200

    Fixed mintToTreasury function

[33mcommit bcdef6fa7e39e7dd6fa2111dbf8ba89c00faca6d[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 16 20:00:13 2020 +0200

    Added change to the stabledebttoken

[33mcommit 5c2ec07b709d7dae63998d6a9f58277d4a67e266[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 16 17:12:07 2020 +0200

    Fixes #42

[33mcommit faf15605bfa600d6cc6f862a0e811d69a80a223d[m
Merge: b182731 9594571
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Sep 16 14:45:52 2020 +0000

    Merge branch '41-rename-liqudiationmanager' into 'master'
    
    Misc renaming
    
    Closes #41
    
    See merge request aave-tech/protocol-v2!52

[33mcommit 570a81a1b24e4c183ba5ec3336622456aa353a44[m
Author: The3D <emilio@aave.com>
Date:   Wed Sep 16 16:44:27 2020 +0200

    Fixed aToken deployment function

[33mcommit 274b63713d8eb22bbde60791333057392ec54d10[m
Merge: 04a67d3 d06e3a3
Author: The3D <emilio@aave.com>
Date:   Wed Sep 16 16:34:29 2020 +0200

    Merge branch 'master' into fix/34

[33mcommit 9594571761c35ffa97fadc3a31775518531f17aa[m
Merge: 373bac1 b182731
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 16 15:22:55 2020 +0100

    Merge branch 'master' into 41-rename-liqudiationmanager

[33mcommit d06e3a39fc73cebb1dee4dc0bf26eb90dfbdeb3f[m
Merge: d873b63 b182731
Author: The3D <emilio@aave.com>
Date:   Wed Sep 16 16:04:19 2020 +0200

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2

[33mcommit 373bac109ba5af83e44f763aa9e2691ec9886325[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 16 15:45:49 2020 +0300

    small comments fixes

[33mcommit 2a6248c6d28571c4c8ca053c800ca301688565c3[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 16 15:09:42 2020 +0300

    misc renaming

[33mcommit b1827310744079d163d5e66b1646a2d51f05c98f[m
Merge: 9b2380c 125644c
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Wed Sep 16 11:17:05 2020 +0000

    Merge branch 'feat/pei-integration' into 'master'
    
    Integration of pei
    
    See merge request aave-tech/protocol-v2!49

[33mcommit 9b2380c5bdf7261f4853be058f9fa4340d4c5072[m
Merge: 6177af3 83e0318
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Wed Sep 16 11:15:48 2020 +0000

    Merge branch 'fix/no-swap-to-freezed' into 'master'
    
    Disallow liquiditySwap with freezed reserve as to
    
    See merge request aave-tech/protocol-v2!50

[33mcommit 66113d64a221c6c8d28b55d0e514125466245857[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 16 13:41:12 2020 +0300

    rename LendingPoolLiquidationManager -> LendingPoolCollateralManager

[33mcommit 83e0318bc6147a0a772a4e0a7c0085857df860fa[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 16 13:30:57 2020 +0300

    add logic to set usageAsCollateralEnabled for the user if his balance was 0 before swap

[33mcommit 77c812b975c1278a29d9350a3c027951b8001567[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 16 13:16:51 2020 +0300

    Refactor the storage of lendingpool to LendingPoolStorage parent contract

[33mcommit 1b61edc6ffe89d82a2918c942b7704dd1b0a6e3e[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 16 11:10:25 2020 +0300

    add tests on liquiditySwap validation logic

[33mcommit 214c51f36596b2c5b82bb0a5e021c58eb7863c6c[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 16 10:22:46 2020 +0300

    disallow liquiditySwap with freezed reserve as to

[33mcommit d873b630829e97ba63b0afc18fb0d0e157197477[m
Author: The3D <emilio@aave.com>
Date:   Tue Sep 15 18:54:59 2020 +0200

    Removed unused flashloan vars

[33mcommit 04a67d3df0bbc95c24e882255fff2c5c93c5ec54[m
Author: The3D <emilio@aave.com>
Date:   Tue Sep 15 18:49:53 2020 +0200

    updated stabledebttoken

[33mcommit 125644cc547593b1a6b2bde0d85f6ad182c7a13e[m
Merge: 5b7b4c5 6177af3
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 15 18:43:55 2020 +0300

    Merge branch 'master' into feat/pei-integration

[33mcommit 5b7b4c517f9b55841b8e5343030e0bdbbf826b8c[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 15 18:25:34 2020 +0300

    fix ci:test env

[33mcommit 6cbcf39454fc8ae2302eb4e82109afbbcfa240b2[m
Merge: 5af2305 6177af3
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 17:24:50 2020 +0200

    Fixed conflicts and merge changes

[33mcommit ee6d01743932604579f6758993f118103fce537d[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 15 18:11:43 2020 +0300

    update package-lock

[33mcommit fba2f03c03ef7626dbb67968ed2b720753566746[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 15 18:08:28 2020 +0300

    rename ERC20 to IncentivizedERC20

[33mcommit 6af1e0923f5fc7fa2db0d11c1cdaaefb2cf3a7dc[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 15 17:49:53 2020 +0300

    fix _incentivesController call in _transfer

[33mcommit 3340bb14fb61055f95a921000abdef0e76f68a7b[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 15 17:40:40 2020 +0300

    typo 0x0 -> 0

[33mcommit 1a7933762fc7280f9d4653021a632292136de251[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 15 17:13:29 2020 +0300

    fix Upgradeability tests setup

[33mcommit 84cf68e58ef464a7c229c1e074cbc9468512de99[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 15 17:02:21 2020 +0300

    fix deployment and tests

[33mcommit 43c8ef02dbcfae1fbbbde572345ecd54637108d1[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 15 16:53:20 2020 +0300

    initial integration of pei, no tests

[33mcommit 6177af3a7085f249484e241e83776b37f523b799[m
Merge: c64c4b7 aef8e68
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 15 13:46:53 2020 +0000

    Merge branch 'feat/pausable' into 'master'
    
    Resolve "Add `pause` boolean affecting all actions on the LendingPool and aToken"
    
    Closes #37
    
    See merge request aave-tech/protocol-v2!44

[33mcommit aef8e68ce0c3ca15dd26bd43b36f1108c0aa4ff8[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 15 15:46:19 2020 +0200

    - Changed _paused visibility and added getter.

[33mcommit c6a3588792c0feccabb52a832013ddc6aeea396c[m
Merge: f428f69 c64c4b7
Author: The3D <emilio@aave.com>
Date:   Tue Sep 15 15:33:09 2020 +0200

    Merge branch 'master' into fix/34

[33mcommit 89ca48e0b277dc9a1e6394cf21e1b2f4e0d71760[m
Merge: 0150ba7 c64c4b7
Author: David Racero <4266635-kartojal@users.noreply.gitlab.com>
Date:   Tue Sep 15 13:27:21 2020 +0000

    Merge branch 'master' into 'feat/pausable'
    
    # Conflicts:
    #   contracts/tokenization/AToken.sol

[33mcommit c64c4b732bd34086c2814e3dc54105242d3ffc31[m
Merge: 191f65c 3c3a01b
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 15 13:21:32 2020 +0000

    Merge branch 'fix/39' into 'master'
    
    Resolve "Fix events on the debt side"
    
    Closes #39
    
    See merge request aave-tech/protocol-v2!48

[33mcommit 3c3a01b80f29722c5276ef9e2c8065b1ba39201a[m
Author: The3D <emilio@aave.com>
Date:   Tue Sep 15 15:20:32 2020 +0200

    Updated events on debt tokens

[33mcommit 191f65c7f030d5e65c081a3fd210d9fd00fe15c8[m
Merge: 0beed34 88ac98a
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 15 12:53:28 2020 +0000

    Merge branch 'feat/modifier-to-function' into 'master'
    
    Change modifier to function to save code size
    
    See merge request aave-tech/protocol-v2!47

[33mcommit 0beed34b66934340d7f8cc1d0af26ffb48c06429[m
Merge: 227c0b4 b963afb
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 15 12:51:20 2020 +0000

    Merge branch 'fix/38' into 'master'
    
    Resolve "Fix events on AToken"
    
    Closes #38
    
    See merge request aave-tech/protocol-v2!46

[33mcommit b963afb0fb8a7f216242818e34d2888b27be969b[m
Author: The3D <emilio@aave.com>
Date:   Tue Sep 15 14:36:02 2020 +0200

    Updated AToken, ERC20

[33mcommit 0150ba70e7a1a732cff1d2971d7707fea45430b3[m
Merge: 38bec0b 88ac98a
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 14:35:50 2020 +0200

    Merge feat/modifier-to-function fixes

[33mcommit 88ac98ab7606cad064c663df75e1f61413f089ca[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 14:30:45 2020 +0200

    Fixes package-lock ci mistmatch. Fixes buidler config to prevent load types prior compilation.

[33mcommit bfc46daaddf16a1e72e86bc82f8a1cdccf7eec13[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 14:25:00 2020 +0200

    Change modifier to function to save code size

[33mcommit 38bec0b8de9980bc819baf5bff5031f2376437bf[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 14:21:17 2020 +0200

    Save some extra codesize.

[33mcommit 80d09848b36462f32faf88902c6e1fa8d725eb58[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 13:25:27 2020 +0200

    Prevent buidler.config.ts to load constants and not depend from types, to allow clean repository to compile and generate types.

[33mcommit aa834ee9041f6032bf84d03cf12863940ecdd516[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 13:13:28 2020 +0200

    Added missing whenNotPaused to new functions. Changed IS_PAUSED error code to 58 to prevent error collision. Added new pausable tests.

[33mcommit 41978a9ee5538cedd29f8a276d7b9aef42b4a1c6[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 12:44:59 2020 +0200

    Fix ci package lock

[33mcommit 83bf3e567764883e2a91b79ff3b2b7e39be2a83c[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 11:56:08 2020 +0200

    Trim PausablePool into LendingPool to save code size.

[33mcommit eea47aedde6005594f535b56de49ed4ee4eeba79[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 11:03:04 2020 +0200

    Minimize Pausable contract

[33mcommit 684297870619c56f772c7ce1690724db48ee3043[m
Merge: 59bfdc3 227c0b4
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 15 10:57:04 2020 +0200

    Merge and fix conflicts

[33mcommit 227c0b4962012f997bedfeeb6ae69cf61ca7e212[m
Merge: 155d249 0c94b24
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Sep 15 08:51:34 2020 +0000

    Merge branch '30-collateral-swap' into 'master'
    
    Resolve "Collateral swap"
    
    Closes #30
    
    See merge request aave-tech/protocol-v2!38

[33mcommit 0c94b24700c21f3326bf305141c7b8c511c5903b[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 15 10:43:22 2020 +0200

    - Fixed description on swapLiquidity().

[33mcommit 59996e1ece6aafc4e0ff438e38eae5ac9dc01b05[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 15 10:28:39 2020 +0200

    - Refactor validation of swapLiquidity() to ValidationLogic.
    - Added extra check on active reserves on swapLiquidity().

[33mcommit 8d391b9ab512894ad37424abadfa02904fd5f453[m
Merge: 172cb05 155d249
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 15 09:56:41 2020 +0200

    Merge branch 'master' into 30-collateral-swap

[33mcommit 172cb05b640f0a1ba50b8cca2a1876624193cc85[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 15 09:51:23 2020 +0200

    - Renamed collateralSwap() to swapDeposit().
    - Added docs to sw

[33mcommit f428f69ebdf3b5fa1ed72142f25d0af681de19a4[m
Merge: d0d1db5 155d249
Author: The3D <emilio@aave.com>
Date:   Tue Sep 15 09:34:00 2020 +0200

    Merge branch 'master' into fix/34

[33mcommit 65775ca3bf8ac4fb72aa297e737d16ba0b1dd444[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 15 09:46:24 2020 +0300

    update collateralSwap signature in the delegate call

[33mcommit 155d249abfcabb4dbe18bb8ecc1df1c05b78c4ca[m
Merge: 80da6f2 fb15afd
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Sep 14 19:34:24 2020 +0000

    Merge branch 'fix/35-isActive-liquidations' into 'master'
    
    Fixes #35
    
    Closes #35
    
    See merge request aave-tech/protocol-v2!43

[33mcommit fb15afda8e734364ffc4452aa0ad888667767baf[m
Merge: e2500d1 80da6f2
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 21:31:22 2020 +0200

    Merge branch 'master' into fix/35-isActive-liquidations

[33mcommit c4904bc41c4539c67b787e28703ecec4ed8cb1a5[m
Merge: 7a8a0d6 80da6f2
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 21:06:16 2020 +0200

    Merge branch 'master' into 30-collateral-swap

[33mcommit d0d1db5e4d7e686ad44993310526282a158bc239[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 20:04:49 2020 +0200

    Initial fix of the borrow tests

[33mcommit 59bfdc39f2bd84f58feb41315b1899bf19678b18[m
Merge: 4ec61ee 80da6f2
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 19:59:00 2020 +0200

    Fix conflicts

[33mcommit 4ec61ee99346c97e0e1c9cdb3b5a0598b40e3450[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 19:46:27 2020 +0200

    When transfer, check pause at pool to save one external call.

[33mcommit d542f098c14ca31f60286eb75c158c7b4b656872[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 19:25:45 2020 +0200

    fixed deposit, withdraw tests

[33mcommit 80da6f2e7a29564a2c605922b58a48ded32129bf[m
Merge: fce0baf 0d36eab
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Sep 14 15:30:44 2020 +0000

    Merge branch 'feat/36-permit-atoken' into 'master'
    
    Feat/36 permit atoken
    
    See merge request aave-tech/protocol-v2!45

[33mcommit 0d36eab807e22ffea4c96addb5636adb2c40c3b3[m
Merge: 721dc1c fce0baf
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 17:27:12 2020 +0200

    Merge branch 'master' into feat/36-permit-atoken

[33mcommit 721dc1c832e096ef2c31147e704e64e2de83ec56[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 17:27:08 2020 +0200

    - Fixed comment on permit().

[33mcommit fce0baffd537c9c13dd9272a2bdcb64618812dcf[m
Merge: 4b8962d a87dae4
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 15:25:52 2020 +0000

    Merge branch '33-add-native-credit-delegation' into 'master'
    
    Resolve "Add native credit delegation"
    
    Closes #33
    
    See merge request aave-tech/protocol-v2!40

[33mcommit a87dae445fc8fe1be87ad954ac6a0e25ef3f6e8f[m
Merge: 6d96be5 4b8962d
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 17:24:55 2020 +0200

    Merge branch 'master' into 33-add-native-credit-delegation

[33mcommit 6d96be5f428aff3fe84276a96e5f0896eca4eeee[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 17:18:57 2020 +0200

    - Added extra natspecs

[33mcommit 9d757aaa37ab21726bb073cfabe13f6ff1d429d1[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 14 17:57:59 2020 +0300

    fix docustring

[33mcommit 64066a14ec6cad802191e65219022f6e8ddc69d7[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 16:09:57 2020 +0200

    Rename IS_ACTIVE to NOT_PAUSED error.

[33mcommit c531b877031ea1ba2786c96bb95e70d2361e4ed4[m
Merge: 748312c 4b8962d
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 16:02:53 2020 +0200

    Merge branch 'master' into feat/36-permit-atoken

[33mcommit 98ed475000266a948f38f9c00b3c59b90d0a80f1[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 15:59:11 2020 +0200

    Remove Context and account from PausablePool events.

[33mcommit 748312cf20aa2f0b96a8705b15b5c502cf20a16e[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 15:57:11 2020 +0200

    - Added permit() to aToken.

[33mcommit 5af23057fa860f9e11072f5fc86eceb934d1bd64[m
Merge: e2bc6fb 4b8962d
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 15:53:34 2020 +0200

    Fix conflicts.

[33mcommit 775d003cc0bd63ac5a4af038f41b3f571d8dadd2[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 15:33:24 2020 +0200

    Keep standard paused() name function.

[33mcommit 6e0091a66886d878dc7580bcccdf76ae5354a8d0[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 15:24:30 2020 +0200

    Added PausablePool contract to support errors by number.

[33mcommit 7c67e0221c7c32ff213503b4b90ab72334685bb5[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 14 16:16:54 2020 +0300

    extra comment

[33mcommit b2ec4dd2fabad7b577a289432b0032ee53c9b03c[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 15:13:30 2020 +0200

    Renamed totalBorrowsStable, totalBorrowsVariable

[33mcommit a6d3cfd03be061cd70a84afb4a7e2377f2b14edc[m
Merge: bb4e1b5 4b8962d
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 15:09:27 2020 +0200

    Merge branch 'master' into fix/34

[33mcommit bb4e1b5c4b3da4528408c29b6d9feb19e9c43d11[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 15:09:16 2020 +0200

    Fixed errors

[33mcommit 202ddbdec44314f2904946a4daae662e9d782b21[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 15:02:48 2020 +0200

    Moved all pausable tests into their own Pausable test suite

[33mcommit 35bff4bea22fdb08866bc9c9067d8aaa6b3d5056[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 14 15:50:46 2020 +0300

    add comment for getDebtTokenAddress function

[33mcommit d135c25b39ae16ceb7fb7bd6762f11f9cfb5169c[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 14 15:41:44 2020 +0300

    add borrowRateMode check on credit delegation

[33mcommit b8a7237458e537412895cf7a2c190837ccae18f3[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 14:36:12 2020 +0200

    Remove whenNotPaused modifier for configurator functions. Added more test cases.

[33mcommit ad2581b0a0a5582bd894c2d4992f3c89af35aede[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 13:57:40 2020 +0200

    Added pausable tests

[33mcommit 4a6517dce1d8759ac9c88f3bcf02807feb0c21bc[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 13:17:06 2020 +0200

    Inherit Pausable from LendingPoolLiquidationManager to match same storage layout as LendingPool.

[33mcommit bbc11eb092eb97505e59f4bde94f6ceee03a0ffe[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 13:03:39 2020 +0200

    Added pausable to Pool actions and aTokens at transfer, triggered by LendingPoolConfigurator. Added basic test to  aToken transfer.

[33mcommit c0c31337634b7362c34acb363b9c8aeede54e370[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 14 13:52:05 2020 +0300

    makecredit delegation per debt token

[33mcommit 4b8962d38f6eba6450fd48144940f2e32acf637a[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 11:48:52 2020 +0200

    Commented buidler gas reporter

[33mcommit 6e92575ac2fff0284b6d70c60981c5659757e254[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 11:41:14 2020 +0200

    add code to _mintToTreasury

[33mcommit 13f77ec0d200b9eb97916d55b0709825979f0e6b[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 11:34:40 2020 +0200

    Fixed repay

[33mcommit d1ffac6380486527e27cec3d4181183988e6fd26[m
Merge: 5061aab a64edb3
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 11:33:34 2020 +0200

    Merge branch 'master' into fix/34

[33mcommit a64edb3011e481a0f71193ba01d2ed44c87e2ee9[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 11:13:53 2020 +0200

    Removed interest redirection leftovers

[33mcommit 5061aab9cc29c32c006b472a772557002c13b3c1[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 11:09:47 2020 +0200

    Added the total supply on stable debt token

[33mcommit e2500d153201b2bbe06a0ca8c16a0984f5f04af1[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 10:52:31 2020 +0200

    - Refactored validation logic of liquidationCall() and repayWithCollateral() to ValidationLogic.

[33mcommit 1fbe84df492ee61d621d68bafcb0a8b9e9c83405[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Sep 14 10:46:57 2020 +0200

    Remove unused parameter to allow compilation without optimization for coverage.

[33mcommit 3c8018fab9d9c8bda7f2b717b7268c69120aef3d[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 10:43:30 2020 +0200

    Cleaned up code, converted addressesProvider to immutable in LendingPool

[33mcommit fc2852e94e1d1aae18e25852fe366f5725670dd9[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 09:53:21 2020 +0200

    Rename updateIndexesAndTimestamp to updateState

[33mcommit 162c7924a9da6f53643eb3917aa62957bfd3a83d[m
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 09:33:53 2020 +0200

    Added index to mint and burn of variableDebtToken

[33mcommit dbf1a0b9e75ad3e49c3cbeb39d63a16e52fb0911[m
Merge: edfcdd6 f3856ba
Author: The3D <emilio@aave.com>
Date:   Mon Sep 14 09:22:39 2020 +0200

    Merge branch 'master' into fix/34

[33mcommit 7a8a0d6ac5d9d1ae12c7ce18e01a855b1484cb73[m
Merge: 1d2617a 7794839
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Sep 14 08:58:37 2020 +0200

    Merge branch 'master' into 30-collateral-swap

[33mcommit f3856bac12248ac2cb402276c869f1011e5fd77b[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Sun Sep 13 11:58:45 2020 +0200

    Refactored variable names, reordered the ReserveData struct

[33mcommit edfcdd6db4ce4d18f120ace94d554f0c714fb866[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Sun Sep 13 10:58:36 2020 +0200

    Removed timestamp from stableDebtToken

[33mcommit 0911f907a801d72c0624f58788ba683fbd392ad6[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Sun Sep 13 10:08:14 2020 +0200

    Fixes #35

[33mcommit 7794839f3c4b9a2f7ac95e4cfc7d1bd54952f1c8[m
Merge: 420b489 70e1f88
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Sat Sep 12 15:23:45 2020 +0000

    Merge branch 'fix/29' into 'master'
    
    Resolve "Refactor the aToken to remove the userIndex"
    
    Closes #29
    
    See merge request aave-tech/protocol-v2!37

[33mcommit 70e1f88ce4b8139b35dda42d4e20184dd08b8d39[m
Author: The3D <emilio@aave.com>
Date:   Sat Sep 12 13:19:41 2020 +0200

    removed comment

[33mcommit 0d9a18813ff980f85fac099b2574c95e8f5e9fad[m
Author: The3D <emilio@aave.com>
Date:   Sat Sep 12 13:18:17 2020 +0200

    Added optimization on mint and burn

[33mcommit 7383fc97866ac012c35e0ea02e4f09dbe8b61b1e[m
Merge: e923324 420b489
Author: The3D <emilio@aave.com>
Date:   Fri Sep 11 16:47:47 2020 +0200

    Merge branch 'master' into fix/29

[33mcommit 420b48978f327b04e5dbb24329ce6e9ba39c2c3a[m
Merge: 496f6f0 d3f9cd2
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Sep 11 14:43:57 2020 +0000

    Merge branch '32-deposit-on-behalf-of' into 'master'
    
    Resolve "Deposit on behalf of"
    
    Closes #32
    
    See merge request aave-tech/protocol-v2!39

[33mcommit b5efaa740f6457896aff791c81399c255f6d0e62[m
Author: The3D <emilio@aave.com>
Date:   Fri Sep 11 15:22:54 2020 +0200

    Added total supply timestamp on the stable debt token

[33mcommit 4058a7284c7ca75ce41e8b20365618562dfb2aed[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Sep 11 12:59:19 2020 +0200

    Update storage layout of LendingPoolLiquidationManager to add new mapping from LendingPool. Fixes delegatecall liquidation error.

[33mcommit f355ae219f1dec4049edeab8b8384fa9725d7e4d[m
Merge: 3173bee 496f6f0
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Sep 11 11:25:42 2020 +0200

    Merge branch 'master' into 33-add-native-credit-delegation

[33mcommit d3f9cd2191a6f1404f4320939b6084fac2a5ee31[m
Merge: 940d9d4 496f6f0
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Sep 10 21:40:26 2020 +0200

    Merge branch 'master' into 32-deposit-on-behalf-of

[33mcommit 496f6f0769b943f5967cbd481d4a69de8c2111a0[m
Merge: 23f99d3 167f025
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Thu Sep 10 19:27:07 2020 +0000

    Merge branch 'feat/26-repay-collateral' into 'master'
    
    Fixes #26 #31
    
    Closes #31 and #26
    
    See merge request aave-tech/protocol-v2!41

[33mcommit 167f02533f858f74ea0f140839a21ec76ca9c1b6[m
Author: David Racero <4266635-kartojal@users.noreply.gitlab.com>
Date:   Thu Sep 10 13:30:57 2020 +0000

    Delete "if" condition due always will be true. Delete unreachable "else" code at repayWithCollateral.

[33mcommit 73d7ca001c3e637e9c2a2c5de70e1e99388b86dd[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Sep 10 13:52:07 2020 +0200

    added configurator tests

[33mcommit 3563f1379d852721d212ddbccd8f3165850351e0[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Sep 10 13:26:02 2020 +0200

    Updated configurator for the reserve factor

[33mcommit c3b1ab0585772efa4c88402b877fab650841e9c9[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Sep 10 13:21:50 2020 +0200

    Refactored interestRateStrategy

[33mcommit af362141fd9d18dc053dc198a5891a68818ac065[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Sep 10 13:16:32 2020 +0200

    Added reserveFactor to getReserveConfigurationData

[33mcommit 831bc3d0ebafecac25a6dd641a1e300d51702103[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Sep 10 13:05:26 2020 +0200

    Added tests to check repay with collateral when is disabled

[33mcommit de8ae523c8b0373df7a408003ae9241508d57d85[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Sep 10 13:05:02 2020 +0200

    Fixed total supply, tests

[33mcommit 4a1e1156f48447526e38d194d8a217a8cdb626ca[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Sep 10 12:51:52 2020 +0200

    Merge local branch

[33mcommit 1d2617a4ceec62451f40c020f28f992bae2ddff0[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Sep 10 13:31:43 2020 +0300

    fix usageAsCollateral test

[33mcommit 3df87a8e5d8f289c80612cbe756f66900c2874e9[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Sep 10 11:25:45 2020 +0200

    Initial commit

[33mcommit e923324ea51332c63a4db6cbb3bcdee09eb43416[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Thu Sep 10 09:57:15 2020 +0200

    Removed duplicated comment

[33mcommit 53112c098270569a0126266548faefa119419bc4[m
Merge: 113c481 4b3abac
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Sep 9 21:26:52 2020 +0200

    Merge changes

[33mcommit 113c481512dca429c12ee50be3a1d25f542f5830[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Sep 9 21:24:20 2020 +0200

    Fixed coverage random failing tests. Added coverage network and minimal config.

[33mcommit a67c56c09f38332ca1d303c4ea0aebed1222cf2b[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Sep 9 21:16:39 2020 +0200

    Removed interest redirection, fixed tests

[33mcommit 4b3abac526783bd42472d462f1fd4d63153a65bc[m
Merge: 23b7226 23f99d3
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Sep 9 21:12:36 2020 +0200

    Merge branch 'master' into feat/26-repay-collateral

[33mcommit a3934152fe6fa9d4c5ef45197d4c79b752ad2585[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Sep 9 19:43:41 2020 +0200

    updated interest redirection

[33mcommit 0f06c3b72e75b912cd29ee7f4d03a60190dd87cf[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Sep 9 17:20:36 2020 +0200

    updated interest redirection tests

[33mcommit 23b7226a73865b055915624ec957d1cb8aed407b[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Sep 9 16:35:49 2020 +0200

    Fix bignumber global test config

[33mcommit 398335124f1620384385a2a5e1099e9accfa47c5[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Sep 9 15:43:02 2020 +0200

    Added collateral test to flash liquidation

[33mcommit 2b930e4cd701b3a803bc93759b79e7c0fdfdc162[m
Merge: f1bd569 75c5c7c
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Sep 9 14:47:56 2020 +0200

    Merge branch 'feat/26-repay-collateral' of gitlab.com:aave-tech/protocol-v2 into feat/26-repay-collateral

[33mcommit f1bd569346e234b8d443020110d0edf757d17425[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Sep 9 14:47:33 2020 +0200

    Added reentrancy test and full amount  flash liquidation test

[33mcommit 3173bee782247febe77b3d778a86b70748d9e488[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 9 15:33:05 2020 +0300

    initial implementation of the credit delegation + basic tests

[33mcommit 75c5c7c615aa1700fff0933f6c31c9ec72ff0774[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Sep 9 14:22:35 2020 +0200

    - Added test for user's usage as collateral on repayWithCollateral().

[33mcommit 223690f5f1fd6ad923699e4d31357113e16768ac[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Sep 9 14:15:38 2020 +0200

    Fixed test on transfer, updated interest redirection tests

[33mcommit d828c63a83e86cf578bb0abfa2635f154e97140f[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Sep 9 13:21:19 2020 +0200

    - Added reset of user's usage as collateral on repayWithCollateral().

[33mcommit 91e064eb31cafb91fbc8a866efbbbd1b538b5b83[m
Merge: 37a9c7a 863d888
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Sep 9 13:07:10 2020 +0200

    Merge branch 'feat/26-repay-collateral' of gitlab.com:aave-tech/protocol-v2 into feat/26-repay-collateral

[33mcommit 37a9c7ad885b95bcfe4de35fc5f33d1e43ad510e[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Sep 9 13:06:46 2020 +0200

    - Added reentrancy guard on repayWithCollateral() and test.

[33mcommit 940d9d44f257c159d91ceba79693b7e1eed52be2[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 9 13:48:52 2020 +0300

    redo useless change of package.json

[33mcommit 9d7bf388a6afac723b313c499034c15ab8de5163[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 9 13:47:27 2020 +0300

    initial changes + test

[33mcommit b0084aaf338c2d97118501d8b7d5c76f263725a7[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Sep 9 11:43:11 2020 +0200

    Fixes borrow, repay, swap rate mode, rebalance tests

[33mcommit 77ca4b47f820c531bafada7a5837e431cf7bc70d[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Sep 9 12:36:13 2020 +0300

    add failing test for setUsingAsCollateral

[33mcommit 6454f040e8f0d6d7c4b94feee2be094095c5bd7a[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Sep 9 10:44:34 2020 +0200

    Fixed withdrawal tests

[33mcommit 90de5d2b0fdbea8a4f7027d0b7093609b6a906c3[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Wed Sep 9 10:03:19 2020 +0200

    Fixed transfer tests

[33mcommit 863d888be600a0ce62d0b3e9defcd51e5cbe4445[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Sep 8 20:06:28 2020 +0200

    Added flash-liquidation tests, mimics self-liquidation tests

[33mcommit 56ddeceb942dd6955aca52bf0ed7dbb817149135[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 8 16:25:16 2020 +0200

    - Added extra test of repayWithCollateral() on self-liquidation.

[33mcommit 2e8f6ee02ce52d3bcbbb35db27094faf355a20f6[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Sep 8 16:14:32 2020 +0200

    Updating withdrawal tests

[33mcommit 3aa0dbc570be1b76b8a13e97951f0d9099051908[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Sep 8 15:05:53 2020 +0200

    - Added tests of repayWithCollateral(), only for self-liquidation.

[33mcommit e3c422468d6c996e62ff64b555c07e635a776a49[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Sep 8 13:48:33 2020 +0200

    Updated comment

[33mcommit 03767e003fd41f9e084c10ecb7b3f40bf37edf4b[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Tue Sep 8 13:45:24 2020 +0200

    Fixes deposits tests

[33mcommit 4912f3bb73296214380c07a6dd3230974a2edc68[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Sep 8 13:08:16 2020 +0300

    update tests calculation logic on swap

[33mcommit a7b6beef4807c003562ee7784d8c86f437ce2bab[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Sep 7 17:55:47 2020 +0200

    Initial refactor commit

[33mcommit aaab81bc150f98eaca1d00dbf697e6244fa077fd[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 7 16:59:41 2020 +0300

    add hf related test

[33mcommit 212cf76f2356175a689e84d034d2447ccb4aef02[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 7 16:48:46 2020 +0300

    add base tests

[33mcommit 721e73c36e6a5459e41bbca6ed6e545aa977a618[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 7 14:41:27 2020 +0300

    add error from lib

[33mcommit 5e3b6869b57e01091414a5300174f0a605cf4196[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 7 13:00:28 2020 +0300

    add check of 0 amountToReceive

[33mcommit f1d3b8c9d64738816d8a13c6b65dbb7eb0563817[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 7 12:54:38 2020 +0300

    add ISwapAdapter interface

[33mcommit 5c28bf5a490d81a084364cbe80da8e6d64f2914e[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Sep 7 12:46:11 2020 +0300

    initial implementation of collateral swap method

[33mcommit 027a7e11e803c7e3054b4d9a428e4ca963ad0982[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Sat Sep 5 18:37:48 2020 +0200

    Removed userIndex

[33mcommit 23f99d30f0698b1a5b64fd000c99bbff83df5d76[m
Merge: 0085458 819cc65
Author: The-3D <frangellaemilio@gmail.com>
Date:   Sat Sep 5 16:18:40 2020 +0000

    Merge branch 'feat/27-new-erc20' into 'master'
    
    Feat/27 new erc20
    
    See merge request aave-tech/protocol-v2!36

[33mcommit 819cc65abd0e2681da0c9d7f87419ccee1065d3a[m
Merge: da734aa 0085458
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Sep 4 17:10:32 2020 +0200

    Merge branch 'master' into feat/27-new-erc20

[33mcommit da734aa68a924441d1a2de4730c1cc1d81b810b6[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Sep 4 16:27:35 2020 +0200

    - Refactored ERC20 and adapted derived contracts.

[33mcommit 0085458da4042ac373b21b723e761d090ec128d7[m
Merge: c972764 ebdc334
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Sep 4 14:05:23 2020 +0000

    Merge branch 'fix/24' into 'master'
    
    Resolve "Gas optimizations"
    
    Closes #24
    
    See merge request aave-tech/protocol-v2!31

[33mcommit ebdc334c45c6d3de19a11a176b6bbce28061a04a[m
Merge: 5848815 c972764
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Sep 4 14:52:54 2020 +0200

    Merge branch 'master' into fix/24

[33mcommit 58488158cd69cdda3d2806ab68ff649ae5142409[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Sep 4 12:48:29 2020 +0200

    Refactored error messages

[33mcommit 7456656b28631a1d76d4000f92add485de4761d8[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Sep 4 10:45:03 2020 +0200

    Removed useless file

[33mcommit 9aad57978db5d146044e66b37f7e51c67a8f9866[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Fri Sep 4 10:27:32 2020 +0200

    Merged master

[33mcommit c9727646d465eb3de8bb21835b53039722ffd929[m
Merge: b32ee65 78d9d4a
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Sep 4 08:10:04 2020 +0000

    Merge branch 'fix/23' into 'master'
    
    Resolve "FlashLoans V2"
    
    Closes #23
    
    See merge request aave-tech/protocol-v2!30

[33mcommit 78d9d4af74985c55c42bdfa3c6491c9c0cec0f0b[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Sep 3 18:25:50 2020 +0200

    Removed space

[33mcommit bb822035a863b42b3b58631218dce39b99d61ad5[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Sep 3 18:14:39 2020 +0200

    Added further test on flashloan for stable rate borrowing

[33mcommit 48438f59f5d2b98e1a8c770fd9968835984a737c[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Sep 3 16:29:14 2020 +0200

    Added a new test to check an invalid interest rate mode

[33mcommit e2bc6fbc7366491a671ccfd7a55c2630727950e1[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Sep 3 16:24:27 2020 +0200

    Fix tests missing param

[33mcommit 1486cee7749f962a37da1d7a8535e2c475aa090f[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Sep 3 15:53:18 2020 +0200

    Fixed tests on flashloan

[33mcommit 2cbb1f57148004eedbd75345f621307b18e00832[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Sep 3 15:46:45 2020 +0200

    - Implemented repayWithCollateral() on LendingPoolLiquidationManager.

[33mcommit db99b6eca6ac3f17b53d619d1c1f893b5f3d3cc8[m
Merge: 16fc0d4 b32ee65
Author: emilio <emilio@ethlend.io>
Date:   Thu Sep 3 15:41:36 2020 +0200

    Merge branch 'master' into fix/23

[33mcommit 16fc0d49711c39ab6d4a061f66ec2207c51bb515[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Sep 3 15:17:46 2020 +0200

    Updated flashloans

[33mcommit b32ee6536ce946fe8a1f81e75707c5e28288ac50[m
Merge: cd09d04 07007fa
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Sep 3 09:22:34 2020 +0000

    Merge branch '25-refactor-require-msg' into 'master'
    
    Resolve "Refactor of error message on requires"
    
    Closes #25
    
    See merge request aave-tech/protocol-v2!35

[33mcommit 07007fa933170fa622dc37a076031f6a816a15a1[m
Author: pol <>
Date:   Thu Sep 3 11:17:49 2020 +0200

    Fixed sintax errors

[33mcommit 714c2ff3fdcf510a4d266d630198d4eccf6e3351[m
Author: pol <>
Date:   Thu Sep 3 10:33:15 2020 +0200

    Refactored as per the PR comments

[33mcommit 288d8f288973c25da696f83f0c5296fb5541e953[m
Author: pol <>
Date:   Wed Sep 2 18:53:39 2020 +0200

    Added LendingPoolLiquidationManager error messages to error lib, and updated tests.

[33mcommit 5b5f8ae74a1a4283f2faa448dd23b90737c36d01[m
Author: pol <>
Date:   Wed Sep 2 18:18:17 2020 +0200

    cleaned comments

[33mcommit ab88aa64bf111935c083cb19119d39e0b3e46815[m
Author: emilio <emilio@ethlend.io>
Date:   Wed Sep 2 18:10:16 2020 +0200

    Fixed merge issues

[33mcommit 76b4fc6b2dcd1b60d0491aa08fe731203c846f1b[m
Author: pol <>
Date:   Wed Sep 2 17:54:34 2020 +0200

    All tests working. WIP look at old error messages to remove them all

[33mcommit cf39045573af58f86c2024ba23c7adec2d5eaf89[m
Merge: e0c27fe cd09d04
Author: emilio <emilio@ethlend.io>
Date:   Wed Sep 2 17:41:01 2020 +0200

    Merge branch 'master' into fix/23

[33mcommit 6122826ef41bc82ba08280340bb4f440c7faddf1[m
Author: pol <>
Date:   Wed Sep 2 16:34:15 2020 +0200

    fixed getting error codes from error lib

[33mcommit 7b4812c956a0ba68f3bedf02c47255be441c478b[m
Author: pol <>
Date:   Wed Sep 2 15:48:38 2020 +0200

    Moved error messages to error lib

[33mcommit 84d1ed0cb772f00ada5fdb7b5d8cb1efa66d6029[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Aug 31 12:10:40 2020 +0200

    Added migration scripts for Uniswap and Aave with configuration and common tasks

[33mcommit e0c27fef3fc6691ca2b8cf7c86d179879a92d616[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Aug 28 16:44:14 2020 +0200

    - Moved index update on flashLoan() to before the executeOperation.
    - Refactor to remove try..catch.
    - Change on _executeBorrow() to not consider liquidityTaken when coming from flash loan.

[33mcommit e4485f12fe5df1a3d271fdd18fa50056903465a6[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Aug 26 16:02:22 2020 +0200

    -  Refactored logic of repay() to an internal _executeRepay().
    -  Initial implementation of flashCollateral() for flash liquidations, repayment with collateral and movement of position.

[33mcommit b3896fa4e33a59268ed6c7777be2586523840429[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Wed Aug 26 12:38:52 2020 +0200

    WIP full migrations

[33mcommit dbcd78a098e8375444d05af1b85a4dff29a62d2e[m
Author: pol <>
Date:   Tue Aug 25 17:27:37 2020 +0200

    Updated require message errors with constant string numbers to reduce gas

[33mcommit e720236170b4b7071ed3c0a4404c0b9d0ce4fd54[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Aug 25 17:27:22 2020 +0200

    Deleted the / from .gitignore types

[33mcommit 9de0fe2bc31452aed1844ee8954cbeae01bac107[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Aug 25 17:15:27 2020 +0200

    Fix conflicts. Stable config implementation. Migrate from constants to configuration files per pool. Skip script loads while compilation.

[33mcommit 5841e51439fd933dfb393fe2ca9ae85f2e98c711[m
Author: pol <>
Date:   Tue Aug 25 15:57:54 2020 +0200

    Updated require message errors with constant string numbers to reduce gas

[33mcommit 0f5017cc81c7d62bca3a8c33f7c8a01c68720554[m
Author: pol <>
Date:   Tue Aug 25 15:51:52 2020 +0200

    Updated require message errors with constant string numbers to reduce gas

[33mcommit abe967c707c6e90af19df4accd242551ffbdf051[m
Author: pol <>
Date:   Tue Aug 25 15:32:22 2020 +0200

    Updated require message errors with constant string numbers to reduce gas

[33mcommit cd09d04d303e01634a6cc4149469ff6dc0a187ad[m
Merge: eba3b52 b0ddb81
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Aug 25 12:59:12 2020 +0000

    Merge branch 'fix/lp-gas-optimization' into 'master'
    
    Small lending pool gas optimization
    
    See merge request aave-tech/protocol-v2!34

[33mcommit 5435620e4147a547cc1ca41aba436d996e4c1438[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Aug 25 14:50:07 2020 +0200

    - Added tests to cover flashLoan().

[33mcommit cf70929eeeac839b3582be3a3a55f86cd7c77122[m
Merge: 4d96f57 eba3b52
Author: David Racero <canillas.mail@gmail.com>
Date:   Tue Aug 25 14:15:35 2020 +0200

    Merge and fix conflicts

[33mcommit 75da6e0fbab360b78876acc9ebbaf1a7e3bdebb6[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Aug 25 12:55:05 2020 +0200

    - Adapted flashLoan() for partial debt opening.

[33mcommit b0ddb815b82c8887488055dbd84cb803db5a2967[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Aug 25 13:37:38 2020 +0300

    small lending pool gas optimization

[33mcommit eba3b5260ff7a7edc84724d879e81c6e5a27c030[m
Merge: 639a2f2 da5b673
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Aug 25 09:11:58 2020 +0000

    Merge branch 'fix/interest-strategy-styliguide' into 'master'
    
    Refactoring of DefaultReserveInterestRateStrategy to follow the stuileguide
    
    See merge request aave-tech/protocol-v2!32

[33mcommit 639a2f2df036d1fbf4f5456d0e7eb4b09cd54bf3[m
Merge: dfe865f 4b00cde
Author: Ernesto Boado <ernesto.boado.moreira@gmail.com>
Date:   Tue Aug 25 09:11:07 2020 +0000

    Merge branch 'fix/lending-pool-styleguide' into 'master'
    
    Fixes in lendingpool folder to follow our styleguide
    
    See merge request aave-tech/protocol-v2!33

[33mcommit 4b00cde616b270eae050769decefe3583a2e2052[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Aug 25 11:53:58 2020 +0300

    fixes in lendingpool folder to follow our styleguide

[33mcommit 4d96f575396229faaa2dfc2c826d445b18494ae0[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Aug 24 16:18:10 2020 +0200

    WIP Config boilerplate

[33mcommit da5b6738c1e8addc84b627284456a2e06958fd96[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Aug 24 15:35:59 2020 +0300

    refactoring of DefaultReserveInterestRateStrategy to follow the stuileguide

[33mcommit 32620e5a57648b763cccfcc043ad9d0c6f477c96[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Aug 24 10:48:55 2020 +0200

    Upload types to allow compilation

[33mcommit 957f4921d6d71a01e2c2d1d1b03f6fb10ed982b5[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Aug 24 10:29:54 2020 +0200

    Moved type outside of types due missing types prior compilation

[33mcommit 4ecf8a9b860177c10f5dc072b5d473c1d09feede[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Mon Aug 24 10:09:08 2020 +0200

    Sync package lock

[33mcommit dfe865fc76fd2be1c5da9ce8f7bdadc6bfc39068[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Aug 24 01:46:15 2020 +0200

    Removed unused code in tests

[33mcommit b2d8a9e053fbafdbe9f87cd273d5a6c97019ed6e[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Aug 24 01:41:10 2020 +0200

    Removed ETH specific logic in tests

[33mcommit d86aafda0c9eceb395cd005f08e4e3bf35b3e042[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Aug 24 01:32:46 2020 +0200

    Fix on the interest rate update

[33mcommit dce7a73dda58d4d259a8ccb920d5369acbb71d9d[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Aug 24 01:30:01 2020 +0200

    Renamed flashloan fee in premium

[33mcommit 928770d9d5bcb703df71511f901aa96a0e7f4fdc[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Mon Aug 24 01:22:14 2020 +0200

    Updated flashloans V2

[33mcommit e04d1881a18882640bb843bc832c89b0f6b1a9b7[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Sun Aug 23 18:42:15 2020 +0200

    Removed tests logfile

[33mcommit d833157cf47250ef0771940b8115c1f292e91e1d[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Sun Aug 23 18:38:34 2020 +0200

    Updated flashloans to transferFrom the receiver instead of checking that the funds where sent back

[33mcommit 9377a137f1c9c19c8fff7e6157e7e98a9adf94c2[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Sun Aug 23 16:49:23 2020 +0200

    Updated flashloan function

[33mcommit 8e3c1a048bf410ce3a981475c714a0ece2eb2b22[m
Merge: 70eb126 45cb9ab
Author: The3D <frangellaemilio@gmail.com>
Date:   Sun Aug 23 16:41:35 2020 +0200

    Merge branch 'master' into fix/23

[33mcommit 70eb126b581dbcaf6712daea06f17e26d6732216[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Sun Aug 23 16:35:01 2020 +0200

    Removed ReentrancyGuard from LiquidationManager

[33mcommit 9ad818996629b151ed835167e5d35cd942d9b6cf[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Sun Aug 23 16:31:31 2020 +0200

    Removed reentrancy

[33mcommit 3e951e7bcb7253b7bc5f7ce6c5d0aca32d3086f9[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Sun Aug 23 12:37:21 2020 +0200

    Removed buidler-gas-reporter

[33mcommit 03ec94010920e549db4b127563034962c3300533[m
Author: The3D <frangellaemilio@gmail.com>
Date:   Sun Aug 23 11:13:43 2020 +0200

    Changed the indexes and rates type to uint128

[33mcommit 5b7a2f2a558dbe41f3f8951eafc1f07000bce33c[m
Author: The3D <emilio@aave.com>
Date:   Sat Aug 22 19:33:55 2020 +0200

    Optimized debt tokens

[33mcommit 4d054dd56d92e25915ef221177c30c191341b6dc[m
Author: The3D <emilio@aave.com>
Date:   Sat Aug 22 13:01:41 2020 +0200

    Optimized MathUtils, ReserveLogic

[33mcommit 06fbe2d2a4041d8dfac1ebe3777e3f2a51bcc946[m
Author: The3D <emilio@aave.com>
Date:   Sat Aug 22 12:04:34 2020 +0200

    Removed SafeMath from WadRayMath, PercentageMath

[33mcommit 45cb9ab6802765d6ecb2ffd789b2aa018371953e[m
Merge: 579f38e 796dc8e
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Fri Aug 21 20:34:28 2020 +0000

    Merge branch 'fix/22' into 'master'
    
    Resolve "FIx the libraries folder to follow our internal guidelines"
    
    Closes #22
    
    See merge request aave-tech/protocol-v2!27

[33mcommit 796dc8ee3fbf5beca24aaa3dcc798966ffd47107[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 19:10:48 2020 +0200

    Updated repay function

[33mcommit 9a4ccde6a2bcd9033d0f49c211219a7ce08d32ac[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 19:00:08 2020 +0200

    Removed obsolete code

[33mcommit 955d2be1da2cad1df98bf6e9e234585772420b57[m
Merge: 2ce0361 579f38e
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 18:48:16 2020 +0200

    Merge branch 'master' into fix/22

[33mcommit 579f38e82a330fac1b0bfcf51de555c8dc313f0e[m
Merge: 704aae7 bd03771
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Aug 21 16:46:12 2020 +0000

    Merge branch 'fix/interfaces-guideline' into 'master'
    
    Refactoring interfaces and config folders to fit current guideline
    
    See merge request aave-tech/protocol-v2!28

[33mcommit bd0377198c3511bbd4d239ea29d02b1b4d709fdd[m
Merge: 2d0325a 704aae7
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 18:36:03 2020 +0200

    Merge branch 'master' into fix/interfaces-guideline

[33mcommit 704aae7dba536cb19e062321d81b71fcca43422b[m
Merge: cdc7e4e 13f4d34
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Aug 21 16:31:47 2020 +0000

    Merge branch 'fix/flash-loan-guideline' into 'master'
    
    Refactoring flashloan folder to fit current guideline, move events to interfaces
    
    See merge request aave-tech/protocol-v2!29

[33mcommit 2ce03614a1d9c1d42aed3c3b3512f6a2ffc8e7a9[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 18:28:11 2020 +0200

    Deleted log files

[33mcommit 1864c7abf47f5ce93ebb54d982a192dc84750b3d[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 18:18:12 2020 +0200

    Updated libraries, renamed internal methods

[33mcommit d7ee67cc21b1d9e04cca061dce6b869af32f6f72[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Aug 21 17:39:48 2020 +0200

    fix npm script

[33mcommit fdb64abfda0ac00e6008830cd90394937dcb85b9[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Aug 21 17:34:43 2020 +0200

    Added missing helper

[33mcommit f9fddfba59314ce49c6aeb771316b6d13b98f39c[m
Merge: 0a173a5 cdc7e4e
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Aug 21 17:19:25 2020 +0200

    Fix conflicts

[33mcommit 0a173a587bab9a0c767a39a67c69a018c34be9d1[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Aug 21 17:11:15 2020 +0200

    Added pool configuration manager with "config" library.

[33mcommit 13f4d34867873cb91e9969a88b02091c5d95075f[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 17:03:01 2020 +0300

    refactoring flashloan folder to fit current guideline, move events to interfaces

[33mcommit 78cf1d5bfda3e09bb76da639e548f2fa5967009a[m
Merge: b7fa1bc cdc7e4e
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 16:00:51 2020 +0200

    Merge branch 'master' into fix/22

[33mcommit 2d0325a3d2023c5b760c57cea5ca208f16ace933[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 16:38:47 2020 +0300

    refactoring interfaces and config folders to fit current guideline

[33mcommit cdc7e4effca51a2f0ee0de6caef017ca336f4004[m
Merge: dfa64d6 c340b99
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Fri Aug 21 13:23:53 2020 +0000

    Merge branch 'fix/21' into 'master'
    
    Resolve "Align the usage of _ to our internal guidelines"
    
    Closes #21
    
    See merge request aave-tech/protocol-v2!24

[33mcommit c340b9972fd0182f3d6b7cd164c19be1070b7075[m
Merge: 1dd2a63 dfa64d6
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Fri Aug 21 13:20:41 2020 +0000

    Merge branch 'master' into 'fix/21'
    
    # Conflicts:
    #   contracts/lendingpool/LendingPool.sol

[33mcommit b7fa1bcac894779203f06348f5577cdcd77972a8[m
Merge: 8fe40b4 dfa64d6
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 15:14:43 2020 +0200

    Merge branch 'master' into fix/22

[33mcommit 8fe40b4639ac6a9080b3a111914ef69259279914[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 15:13:08 2020 +0200

    Initial update of ReserveLogic

[33mcommit dfa64d63f377ada655a554b2aaaae2db2d796538[m
Merge: 9caf3ea b5f630f
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Aug 21 13:03:47 2020 +0000

    Merge branch 'fix/misc-guideline' into 'master'
    
    Refactoring misc folder to fit current guideline
    
    See merge request aave-tech/protocol-v2!26

[33mcommit 9caf3ea60ac4dc556f39fc7921afce2781ff4046[m
Merge: 83b499f 4ecc53a
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Aug 21 13:03:30 2020 +0000

    Merge branch 'fix/tokenization-guideline' into 'master'
    
    Refactoring tokenization folder to fit current guideline, small gas optimizations
    
    See merge request aave-tech/protocol-v2!25

[33mcommit 86541b3fe5eee25d0a9a93684d4d2722bcfe3518[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 14:58:30 2020 +0200

    Fixed GenericLogic

[33mcommit e948101f879f795379e79df3cf337a654d23709e[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 14:54:07 2020 +0200

    Fixed Helpers

[33mcommit b13e08cfde99d04b2c69537d4bf916a79ab1e3f5[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 14:52:10 2020 +0200

    Fixed UserConfiguration

[33mcommit e39cf64183d11c5349aef4068fd9718ef6b579d5[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 14:50:28 2020 +0200

    Updated ReserveConfiguration

[33mcommit 83b499fd719a7c5b946121458f68414f62806a0d[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 15:19:07 2020 +0300

    fix ci -5

[33mcommit 19b259f9593535a1af5f97ba4838fecc42105cc2[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 15:16:30 2020 +0300

    fix ci -4

[33mcommit 03669633ccf718ec57fff253a02a92c48fc2f3ef[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 15:15:52 2020 +0300

    fix ci -3

[33mcommit 1dd2a638ca5ce36eef7527a17b13aeaec8d92ad3[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 14:14:13 2020 +0200

    Updated LiquidationManager

[33mcommit e6633bdb01086da764a7445effc51f8f58d1c6ed[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 15:13:19 2020 +0300

    fix ci -2

[33mcommit 8b191d3d5242cdc8fc59ac5c920e2aad211a1ab8[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 15:12:18 2020 +0300

    fix ci

[33mcommit 2cc6aa9974731b9ce28c1cdaa96917b3230fc6fe[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 15:11:01 2020 +0300

    add test step to CI

[33mcommit 38bff60298ffad81500174d7baedabab494dd29f[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 14:05:14 2020 +0200

    Updated comments

[33mcommit b4b9ff604a84e8a71385b0467b77e38f5c575a95[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 14:03:17 2020 +0200

    Cleaned up configurator, LendingPooL

[33mcommit b5f630f78fc26775a45b2bd5b7fd0f3f13c32909[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 15:00:10 2020 +0300

    refactoring misc folder to fit current guideline

[33mcommit 05fac1606337ea46565822ef2f72519b763ff061[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 13:15:29 2020 +0200

    Cleanup LendingPool

[33mcommit 82ee09caef2447dcae6d143a969e958a01f31f39[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Fri Aug 21 13:07:32 2020 +0200

    Added initialize task

[33mcommit 4ecc53abeee13ca947f5e0d0444cce73b1c9514f[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 13:40:56 2020 +0300

    fix typo in StableDebtToken balanceOf method

[33mcommit 94d8f38597ce541d4b98ae6a367cbfa077058d05[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 13:38:08 2020 +0300

    refactoring tokenization folder to fit current guideline, small gas optimizations

[33mcommit b93937f4fd816df4de6f943aebae6f1443fb3b2a[m
Author: The3D <emilio@aave.com>
Date:   Fri Aug 21 11:21:50 2020 +0200

    Fixed DefaultReserveInterestRateStrategy

[33mcommit d2848105f7fe8f99d4c1579b6ab99d156fa6a90c[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 10:33:06 2020 +0300

    fix liquidation test

[33mcommit cdaa313f6508773bb9bf6af5f4454c9b33038993[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Aug 21 10:24:59 2020 +0300

    change public to external on debt tokens -2

[33mcommit 54d9e3a7ee5e390a226478c224604ee442e976e7[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Aug 20 17:38:57 2020 +0200

    Added missing stash work

[33mcommit 383f7fc3bb13b92aa979c623321dda9036d41a95[m
Author: David Racero <canillas.mail@gmail.com>
Date:   Thu Aug 20 17:35:05 2020 +0200

    WIP: Added dev-deployment scripts. Moved some helpers and mocks outside of test setup.

[33mcommit dc4823ec0918acd4f6931c3b88de8a90656115b2[m
Merge: dc64b7f 2d769f4
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Thu Aug 20 15:12:00 2020 +0000

    Merge branch 'fix/19' into 'master'
    
    Resolve "Issue: Timestamp is not updated in the burn() function of StableDebtToken"
    
    Closes #19
    
    See merge request aave-tech/protocol-v2!22

[33mcommit 2d769f4480fae249674ca9a7667cd1982d3d7ef1[m
Author: The3D <emilio@aave.com>
Date:   Thu Aug 20 17:09:23 2020 +0200

    Fixes #19

[33mcommit dc64b7f992b5954f56def5a33fdb33edd5e17be9[m
Merge: 8bdbd0a ec0498b
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Aug 20 14:35:31 2020 +0000

    Merge branch 'feat/debt-token-fixes' into 'master'
    
    Debt token fixes
    
    See merge request aave-tech/protocol-v2!21

[33mcommit ec0498bd3bc847ab519c0085811faa9c9f153f4f[m
Merge: 735a00b 8bdbd0a
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Aug 20 17:26:49 2020 +0300

    Merge branch 'master' into feat/debt-token-fixes

[33mcommit 735a00b5f34a4b17a9314ffdb3b4b97457aadf35[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Aug 20 17:26:06 2020 +0300

    fix minor debt token issues

[33mcommit 8bdbd0a7ceee70fbc39895b8aeeef554f662bdb7[m
Merge: fa32406 57fb45e
Author: The3D <emilio@aave.com>
Date:   Thu Aug 20 16:18:08 2020 +0200

    Merge branch 'master' of gitlab.com:aave-tech/protocol-v2

[33mcommit fa32406b4870f615b1933ccc7f44236a84f3f41c[m
Author: The3D <emilio@aave.com>
Date:   Thu Aug 20 16:04:03 2020 +0200

    Removed redundant virtual in IVariableDebtToken

[33mcommit 57fb45e380189001947946f69d1d8c2dad590a39[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Aug 20 16:31:52 2020 +0300

    remove named return in calculateAvailableCollateralToLiquidate

[33mcommit 7c3d5e02395f6373c87be11081f12f1629a13459[m
Merge: a6e7885 26115b4
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Aug 20 13:29:31 2020 +0000

    Merge branch 'feat/remove-payable' into 'master'
    
    Remove payable
    
    See merge request aave-tech/protocol-v2!20

[33mcommit 26115b4601711eda178e9f3c04a7480b0956b3f3[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Aug 20 16:12:19 2020 +0300

    RepayLocalVars removal

[33mcommit a6e78856a08270ce9a3aad347e5cedde105d1ef5[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Aug 20 16:01:54 2020 +0300

    remove using WadRayMath and SafeMath duplication

[33mcommit 3a24d4e43445884be80963523113c1079c2ce3e3[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Aug 20 15:35:51 2020 +0300

    remove unused Address lib imports

[33mcommit 39984383c69f1adda36a7d8a3861665276f5a219[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Aug 20 15:32:20 2020 +0300

    remove payable, add IAToken and ILendingPool

[33mcommit ae8878a50ed31eef367bdcf28b4b2fa683d978e0[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Aug 20 13:44:51 2020 +0300

    fix more imports

[33mcommit 65f0ebf4f401c6fc9231a788c3b2877f99c2d39c[m
Merge: 440e556 8a8c75c
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Aug 20 10:30:37 2020 +0000

    Merge branch 'feat/token-distributor-removal' into 'master'
    
    Removal of TokenDistributor, FeeProvider and FlashLoanVars
    
    See merge request aave-tech/protocol-v2!18

[33mcommit 8a8c75c713c495bfad48951aa643e35b0ebeed7c[m
Author: The3D <emilio@aave.com>
Date:   Thu Aug 20 12:21:42 2020 +0200

    Fixed flashloan test

[33mcommit 028d859a54ca421fa7a1da5367a26c4fa21b5853[m
Merge: 1a2bfcb 440e556
Author: The3D <emilio@aave.com>
Date:   Thu Aug 20 11:32:26 2020 +0200

    Merge branch 'master' into feat/token-distributor-removal

[33mcommit 440e5565ce6a09e3f6f20e2765e8469f07325947[m
Merge: 7d23041 a437512
Author: The-3D <frangellaemilio@gmail.com>
Date:   Thu Aug 20 08:34:26 2020 +0000

    Merge branch 'fix/7' into 'master'
    
    Resolve "Code cleanup"
    
    Closes #7
    
    See merge request aave-tech/protocol-v2!17

[33mcommit a437512ae919763b9786455695ccdd3ca5c1eecb[m
Author: The3D <emilio@aave.com>
Date:   Thu Aug 20 09:56:43 2020 +0200

    Removed origination fee event, variables

[33mcommit 76fcb20b4429db1c28142f774c627e3839115dd0[m
Author: The3D <emilio@aave.com>
Date:   Thu Aug 20 09:51:21 2020 +0200

    Code cleanup

[33mcommit 1a2bfcbf45eafefda9e3d85ef42d1869df8863a0[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Aug 19 19:06:32 2020 +0300

    remove FeeProvider setters and getters

[33mcommit 2579bbcfec84a9df32c279fc574adf816040a460[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Aug 19 18:58:53 2020 +0300

    removal of TOKEN_DISTRIBUTOR constant

[33mcommit d60f7b62727075522b3ef6e38b166b263eff23d6[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Aug 19 18:56:51 2020 +0300

    removal of TokenDistributor, FeeProvider and FlashLoanVars

[33mcommit 926d25dba8b074675e679d252f0b8f59f5fb873b[m
Author: The3D <emilio@aave.com>
Date:   Wed Aug 19 16:57:49 2020 +0200

    Cleaned up validation logic

[33mcommit a419ca90143a6a54a3598bd2ec3596954552791b[m
Author: The3D <emilio@aave.com>
Date:   Wed Aug 19 16:39:04 2020 +0200

    Further cleaned up reserveLogic

[33mcommit b68bb992fb6bb718790f35ec9c43e4340e68e1c1[m
Author: The3D <emilio@aave.com>
Date:   Wed Aug 19 16:36:58 2020 +0200

    Cleaned up reserveLogic

[33mcommit 7d23041849b816d82350933c0871e7c0fe598c7c[m
Author: The3D <emilio@aave.com>
Date:   Wed Aug 19 16:17:27 2020 +0200

    Configured gitignore

[33mcommit 5b33ea65d11089c4cc64b053ce9dfbc5a3464025[m
Author: The3D <emilio@aave.com>
Date:   Wed Aug 19 16:10:08 2020 +0200

    Initial fix

[33mcommit 0e9883d1f9ddc1d3cd0ca8f9ef877a76d9f9e1c3[m
Merge: d141d09 6a4caff
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Wed Aug 19 13:03:23 2020 +0000

    Merge branch 'refactoring/addresses-provider' into 'master'
    
    AddressesSorage and UintStorage removal, guidlene fixes in AddressesProvider
    
    See merge request aave-tech/protocol-v2!16

[33mcommit 6a4caff6e400dc5b27c2fb7d7ca0799968c850d5[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Aug 19 15:53:00 2020 +0300

    AddressesSorage and UintStorage removal, guidlene fixes in AddressesProvider

[33mcommit d141d090e41ea52b2ea0057d1078d0780e245956[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Aug 19 15:23:41 2020 +0300

    migrate to ethers v5

[33mcommit e01b39814dd8163c81a6427ee01dc34813401048[m
Merge: 573738c 90b2625
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Aug 19 11:33:46 2020 +0000

    Merge branch 'fix/8' into 'master'
    
    Resolve "Move redeem() to LendingPool"
    
    Closes #8
    
    See merge request aave-tech/protocol-v2!15

[33mcommit 90b2625bc0bba598f784240d51f81351b25857ec[m
Author: The3D <emilio@aave.com>
Date:   Wed Aug 19 12:56:39 2020 +0200

    Refactored tests, burn and mint function

[33mcommit 576fd4ec55c1dafe72df618bfed6f94e98b8f3eb[m
Author: The3D <emilio@aave.com>
Date:   Tue Aug 18 21:19:11 2020 +0200

    Initial refactor

[33mcommit 573738cd7b630633900ff9c11eee7253c6cc080d[m
Merge: 61053e9 dd008ae
Author: The3D <emilio@aave.com>
Date:   Tue Aug 18 20:07:18 2020 +0200

    Merge branch 'fix/16'

[33mcommit dd008ae226724af332b53e16eac1747964f1638a[m
Author: The3D <emilio@aave.com>
Date:   Tue Aug 18 18:48:23 2020 +0200

    Refactored code

[33mcommit 61053e9ca4e4effaa7f03a64762073a476ceefef[m
Merge: 45d12fd 7b51fde
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Tue Aug 18 14:26:50 2020 +0000

    Merge branch 'fix/16' into 'master'
    
    Resolve "Add proxy on debt tokens"
    
    Closes #16
    
    See merge request aave-tech/protocol-v2!14

[33mcommit 7b51fde8e7f43e9889a76a816e613f109c79f390[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Aug 18 12:16:48 2020 +0200

    Added tests for debt tokens upgradeability

[33mcommit 3247fb87847d79ce8346a8ca687085fbb006824b[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Aug 18 11:39:34 2020 +0200

    Added mock debt tokens for test

[33mcommit 4a4073f1a9ac3e617ff5be5ef09d0ec574cb709d[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Aug 18 02:16:46 2020 +0200

    Added function to update stable/variable debt tokens

[33mcommit 674b885b3106361ac9229ed171d9e54b2d67ca3e[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Aug 17 21:28:50 2020 +0200

    Updated initReserve() with proxies

[33mcommit 45d12fd43da1ccf59a3c5d8e5971cf958777e1ff[m
Merge: 1b2594b d765683
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Aug 17 14:52:32 2020 +0000

    Merge branch 'fix/17' into 'master'
    
    Resolve "Get rid of ETH specific code"
    
    Closes #17
    
    See merge request aave-tech/protocol-v2!13

[33mcommit d7656839fa9a4d9228f8520d5943a07dfb2ad074[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Aug 17 13:48:23 2020 +0200

    Fixes remaining tests

[33mcommit 142cec24e76110b5a60a69cee16989cbfb0f9a7f[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Aug 17 11:59:38 2020 +0200

    fixed usage as collateral tests

[33mcommit ffb3c9f39ded21803983d636c04a445719f5b039[m
Author: emilio <emilio@ethlend.io>
Date:   Fri Aug 14 19:05:31 2020 +0200

    Fixes flashloans tests

[33mcommit fbc62054797a32e0d1f7f0898758a28b0c4e17c4[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 13 19:25:29 2020 +0200

    Fixes liquidation/transfer tests

[33mcommit db17958737ffc29c2289887118a0e0133ecdb81d[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 13 16:58:06 2020 +0200

    Fixes the borrow-repay-variable scenario

[33mcommit 85f6feba899aaa96accf287a7ba36b5a8f73ec02[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 13 16:15:34 2020 +0200

    Further fix

[33mcommit 991fba36c30d50ca728488a391e8d235e0b317f9[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 13 16:15:02 2020 +0200

    Fixes borrow-repay-stable scenario

[33mcommit 8af0e9fd1136cf69c689649e42c3c37f4e4bde29[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 13 15:46:31 2020 +0200

    Fixed borrow negatives

[33mcommit 78023ae5c39fc0642f82b8d243caf5cb49f0a2f5[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 13 15:37:11 2020 +0200

    Fixed redeem negatives

[33mcommit f149d9e56a7d04f822b5145f52f34337b735ca52[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 13 14:58:44 2020 +0200

    Fixed redeem scenarios

[33mcommit 547c95dc1a0328d1792f63bcff4caaf7e718c5ad[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 13 14:32:41 2020 +0200

    Updated deposit scenarios

[33mcommit 3c3e4d146aff5c15b869088b555e9a60586c7f19[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 13 13:06:23 2020 +0200

    First refactor of the tests; replaced ETH with WETH in the configuration

[33mcommit 1b2594b550ebfac4ee1dc6157f3605b1d758464c[m
Author: emilio <emilio@ethlend.io>
Date:   Wed Aug 12 19:42:40 2020 +0200

    Fixed syntax error

[33mcommit 1d02b7f5e3fe6e9a809a3b96940652a23303ac1c[m
Author: emilio <emilio@ethlend.io>
Date:   Wed Aug 12 19:36:58 2020 +0200

    Initial commit

[33mcommit 9ac6bfa90bd08667c1019514a2a15d81a6cfca09[m
Merge: 83952c2 b5264a7
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Aug 12 15:04:16 2020 +0000

    Merge branch 'fix/15' into 'master'
    
    Resolve "Various gas optimizations"
    
    Closes #15
    
    See merge request aave-tech/protocol-v2!12

[33mcommit b5264a7c66758341c42d32e91a747d34f0c18f31[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Aug 11 12:32:34 2020 +0200

    Removed rayPow

[33mcommit afc9612ac4fb2ac19f3002d3c6eb9c208646e459[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Aug 11 12:26:15 2020 +0200

    Updated optimization in aToken and debt tokens

[33mcommit 9b0b1900197882cdcd8e768fb057fef1e4897b45[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Aug 11 10:11:35 2020 +0200

    Fixed compounded interest approximation

[33mcommit 413b648b41ec881a3c63fa48feda91ea6c189998[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Aug 11 09:36:46 2020 +0200

    implementation

[33mcommit 83952c297575b56af1c442480d35a09a01e299c4[m
Merge: 06166c6 7bb6f2f
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Aug 11 07:33:00 2020 +0000

    Merge branch 'feat/10' into 'master'
    
    Resolve "Update LendingPoolConfigurator to have aTokens proxies"
    
    Closes #10
    
    See merge request aave-tech/protocol-v2!11

[33mcommit 7bb6f2fef2b182a913bb7f7a16e5f6f6212c5da0[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Aug 11 09:23:57 2020 +0200

    Space

[33mcommit b3bf8d66a2f0239d954907b6007cda1e00efde3c[m
Author: emilio <emilio@ethlend.io>
Date:   Tue Aug 11 09:20:47 2020 +0200

    Updated initReserve() parameter

[33mcommit 1e5c3d723441c5408ddfc405db183a8508140500[m
Author: The3D <emilio@aave.com>
Date:   Mon Aug 10 20:23:36 2020 +0200

    Removed gitignore newline

[33mcommit ed593812202b923aa56adf42da2c76014a2db620[m
Author: The3D <emilio@aave.com>
Date:   Mon Aug 10 20:22:39 2020 +0200

    Removed gitignore

[33mcommit b387bcf8454d3cd43c2d5f32b6f90874dbd51155[m
Author: The3D <emilio@aave.com>
Date:   Mon Aug 10 20:20:08 2020 +0200

    Added upgradeability tests

[33mcommit 734d125cd77025192ea0b938c4189cfb0acee111[m
Author: The3D <emilio@aave.com>
Date:   Mon Aug 10 15:29:18 2020 +0200

    added function to update the aToken instance

[33mcommit fb5377a63eb1d5e9981e242dfce13013109f7476[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Aug 10 00:11:06 2020 +0200

    Gas optimization in getNormalizedIncome/getNormalizedDebt

[33mcommit 49bca9febbc675da8fb1cc1d3415e58f7e2472fb[m
Author: emilio <emilio@ethlend.io>
Date:   Sat Aug 8 19:21:23 2020 +0200

    Optimized aToken - turned pool and underlying asset address into immutables

[33mcommit 50bb9d39b0c2f292293432d6961827af21dafc89[m
Merge: cf3f686 06166c6
Author: emilio <emilio@ethlend.io>
Date:   Fri Aug 7 19:32:34 2020 +0200

    Merge branch 'master' into feat/10

[33mcommit cf3f68653f548b873db2f4f8929f2739ce8fcbc3[m
Author: emilio <emilio@ethlend.io>
Date:   Fri Aug 7 19:29:13 2020 +0200

    Updated setup script

[33mcommit a0bf692373e2a61a0c529dfd2a1bf41fbf6df36b[m
Author: emilio <emilio@ethlend.io>
Date:   Fri Aug 7 18:23:52 2020 +0200

    Initial commit

[33mcommit 06166c665d10e6d014bbb3e42f344b4349acdb8c[m
Merge: d8dd838 1015a7c
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Aug 7 13:58:26 2020 +0000

    Merge branch 'feat/3' into 'master'
    
    Resolve "Mask-style implementation of flags parameters for user's data on the protocol"
    
    Closes #3
    
    See merge request aave-tech/protocol-v2!10

[33mcommit 1015a7ca137360da57e5bec0f420ac70cc4e76e3[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 6 19:49:41 2020 +0200

    Fixes comments

[33mcommit 5c4df95b87c710816ccf4b50829345a030b2c7b4[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 6 09:57:12 2020 +0200

    Added comments to UserConfiguration

[33mcommit f9115b703027d5330fe9a44b80eea014a3ebeb9f[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 6 09:52:15 2020 +0200

    refactored UserLogic

[33mcommit 8df5182c59cd30cacb9e5828a5ecb4c65febba3c[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Aug 6 00:46:22 2020 +0200

    Fixed bugs in user configuration

[33mcommit 1eb2d11a3d948d35ea45ca4ced4fa45c4172c983[m
Author: emilio <emilio@ethlend.io>
Date:   Wed Aug 5 12:40:24 2020 +0200

    initial commit

[33mcommit d8dd838d859e10c07462fb14cd841cb4e4340f67[m
Merge: d6cc251 23f8f65
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Aug 3 10:51:41 2020 +0000

    Merge branch 'feat/13' into 'master'
    
    Resolve "Bitmap for reserve configuration "
    
    Closes #13
    
    See merge request aave-tech/protocol-v2!8

[33mcommit 23f8f658906a1c4f7b0132689a40657e687b4d51[m
Merge: 729abc0 d8424d4
Author: The-3D <frangellaemilio@gmail.com>
Date:   Mon Aug 3 09:31:38 2020 +0000

    Merge branch 'fix/14' into 'feat/13'
    
    Resolve "add two decimals to LTV, liquidation bonus, liquidation threshold"
    
    See merge request aave-tech/protocol-v2!9

[33mcommit d8424d43a57a1585572966effaaca0fd898d4e82[m
Author: emilio <emilio@ethlend.io>
Date:   Mon Aug 3 09:08:07 2020 +0200

    Added comments

[33mcommit c86884ef2858d70a6081c531c6f41f1079d7cbfe[m
Author: emilio <emilio@ethlend.io>
Date:   Sun Aug 2 18:36:04 2020 +0200

    Fixes tests on liquidation

[33mcommit 692cc87f629c475dcb2c84fc1948f5744681a894[m
Author: The3D <emilio@aave.com>
Date:   Mon Jul 27 16:14:21 2020 +0200

    Updated PercentageMath to support two decimals of precision

[33mcommit 11e06e2e9283891fa2f201352e8f1165c459e309[m
Author: The3D <emilio@aave.com>
Date:   Mon Jul 27 13:47:48 2020 +0200

    Refactored code to use PercentageMath, fixed PercentageMath bug

[33mcommit 4baf17d9e6a90befc07642419cbaeafcaf176f96[m
Author: The3D <emilio@aave.com>
Date:   Mon Jul 27 12:32:54 2020 +0200

    added percentMath

[33mcommit 729abc0769a4fde58ef5458015a3af0930e96e66[m
Author: The3D <emilio@aave.com>
Date:   Mon Jul 27 10:03:53 2020 +0200

    Fixed the configurator comment

[33mcommit 6752203c5c9e4bd4ebf9bd5aa06feb9083e743d2[m
Author: The3D <emilio@aave.com>
Date:   Mon Jul 27 10:00:26 2020 +0200

    Fixed scenario test

[33mcommit f520c535cb66ac382b1fabbd0e1e0c68985da1fd[m
Author: The3D <emilio@aave.com>
Date:   Mon Jul 27 09:59:25 2020 +0200

    Removed gas reporter

[33mcommit 8a79d71230faef96425d5bce3a0922dcf5f36df3[m
Author: The3D <emilio@aave.com>
Date:   Mon Jul 27 09:59:04 2020 +0200

    Updated validateRepay, fixed natspec comment

[33mcommit 1a29def14d9262e4190359e056c645073d3b0d67[m
Author: The3D <emilio@aave.com>
Date:   Mon Jul 27 09:49:45 2020 +0200

    Added natspec comments to ReserveConfiguration

[33mcommit 8d1d06bbddd626cd70deb2d804507c5878c948dd[m
Author: The3D <emilio@aave.com>
Date:   Fri Jul 24 14:57:52 2020 +0200

    Removed change on calculateUserAccountData

[33mcommit fa60f03d8d5ee867b97292d3893288a730ab839d[m
Author: The3D <emilio@aave.com>
Date:   Thu Jul 23 17:18:06 2020 +0200

    Updated parameters mapping

[33mcommit 77faf4774bbb9da7bd5b48e653709953f0e59da9[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 21 10:20:51 2020 +0200

    Fixed configuration library

[33mcommit 8e6ea20a79fc77b7f8cf5bb97a51bc477600480d[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 21 09:53:38 2020 +0200

    Added configuration library

[33mcommit d6cc251f29dc2bebc1e0df8d2dccc9167d8115a0[m
Author: The3D <emilio@aave.com>
Date:   Fri Jul 17 17:12:25 2020 +0200

    Fixes IR

[33mcommit 57f2965cbd5adf33e62e25d01b96733d5bcad494[m
Merge: 7b66a05 60b30fe
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Jul 17 10:29:51 2020 +0000

    Merge branch 'fix/9' into 'master'
    
    Resolve "Fix liquidationCall() function"
    
    Closes #9
    
    See merge request aave-tech/protocol-v2!7

[33mcommit 60b30fe91ead1549a5b9c9d5bd06b83c379b750c[m
Author: The3D <emilio@aave.com>
Date:   Wed Jul 15 16:51:48 2020 +0200

    Removed unused function

[33mcommit 4d2406a5e182afc91d85f13c2b473bddb2e9f090[m
Author: The3D <emilio@aave.com>
Date:   Wed Jul 15 16:49:56 2020 +0200

    Fixed liquidation tests

[33mcommit 2add014fe5a03698009fe6e21b5f2b8abaa6da2c[m
Author: The3D <emilio@aave.com>
Date:   Wed Jul 15 16:44:20 2020 +0200

    Fixes issue on LiquidationManager

[33mcommit 7b66a05c5d79af48602def73ba5af1feb9bf0cb7[m
Merge: 5110963 40e3cd4
Author: The-3D <frangellaemilio@gmail.com>
Date:   Wed Jul 15 12:11:18 2020 +0000

    Merge branch 'feat/funds-allocation' into 'master'
    
    Feat/funds allocation
    
    Closes #6
    
    See merge request aave-tech/protocol-v2!4

[33mcommit 511096382fe74ab3637c444cfbfb11c3f0f43564[m
Merge: 8c8954e 769a95b
Author: emilio <emilio@ethlend.io>
Date:   Tue Jul 14 16:15:11 2020 +0200

    Merge branch 'master' into fix/12

[33mcommit 769a95b1ea3a5f252d83a1c6da22663e5b1c3e5f[m
Merge: 89ad335 64f6e7a
Author: The-3D <frangellaemilio@gmail.com>
Date:   Tue Jul 14 14:12:00 2020 +0000

    Merge branch 'fix/11' into 'master'
    
    Resolve "Fix aToken issue"
    
    Closes #11
    
    See merge request aave-tech/protocol-v2!5

[33mcommit 8c8954ea8ec8979aa23b66c314bd1e4662b28b3c[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 14 14:53:07 2020 +0200

    Fixes aToken issue on interest accumulation

[33mcommit 64f6e7a2762972a1e02c900c4889e6f0afed896a[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 14 14:50:31 2020 +0200

    Revert "Fixes the interest redirection bug on the aToken"
    
    This reverts commit ab3198128ae3775eb865f947f867acc8e58acab3.

[33mcommit ab3198128ae3775eb865f947f867acc8e58acab3[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 14 14:48:42 2020 +0200

    Fixes the interest redirection bug on the aToken

[33mcommit 92f2f2a9b39364318e500340cc1441d838bcf274[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 14 14:43:43 2020 +0200

    Fixes aToken bug

[33mcommit 40e3cd4f31ddcc38f1fa85a62861047e73bb6215[m
Author: The3D <emilio@aave.com>
Date:   Mon Jul 13 16:43:26 2020 +0200

    added tests for transferUnderlyingTo

[33mcommit 56fa10bd8fbbcb26b3cdbe35c6ac2f7cd1d38428[m
Author: The3D <emilio@aave.com>
Date:   Mon Jul 13 15:19:47 2020 +0200

    Fixes tests on flashloans

[33mcommit 048a2de7dee8a80bbf9d58ed1dd4ed959fa64ea4[m
Merge: edd7ad3 89ad335
Author: The3D <emilio@aave.com>
Date:   Mon Jul 13 12:24:36 2020 +0200

    Merge branch 'master' into feat/funds-allocation

[33mcommit 89ad3359126d713d441809d9ffd89badd4a78ada[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Mon Jul 13 11:54:08 2020 +0300

    pretty print

[33mcommit edd7ad3b155ad784f42d1d6ba0765ae605e0d0c1[m
Author: The3D <emilio@aave.com>
Date:   Fri Jul 10 19:16:04 2020 +0200

    Added transfer of the funds to aTokens

[33mcommit c845e6ce3ff381d52a832df77b3b516c7d10a5c6[m
Merge: ac52782 7018a85
Author: The-3D <frangellaemilio@gmail.com>
Date:   Fri Jul 10 09:22:50 2020 +0000

    Merge branch 'feat/debt' into 'master'
    
    Feat/debt
    
    Closes #5
    
    See merge request aave-tech/protocol-v2!3

[33mcommit 7018a85774e9ba68176194eff6722ea4fcdffab8[m
Merge: af04ce8 ac52782
Author: The3D <emilio@aave.com>
Date:   Fri Jul 10 11:20:15 2020 +0200

    Merge branch 'master' into feat/debt

[33mcommit e5f0206f878874a97f05dbf8c2553d83489d371b[m
Author: The3D <emilio@aave.com>
Date:   Fri Jul 10 10:57:30 2020 +0200

    Added atoken approval to LendingPool

[33mcommit af04ce86f32add1d5dc1b2091095beba2eebf0e7[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 17:05:16 2020 +0200

    Fixed revert message in LendingPool

[33mcommit 853f3118dc86c1623235287807b9b0c954c7d8fa[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 17:02:16 2020 +0200

    removed unused library, console.log

[33mcommit 2b459fc5785f324a6c96350839ed4c202e194d13[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 16:55:09 2020 +0200

    Polished comments in UserLogic

[33mcommit a84f26670cf7c14dea3d527fd9c2aa983a2cf0b1[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 16:52:57 2020 +0200

    polished variable rate debt token comments

[33mcommit e5bf908d1ceca2b5ba49f90e523b58c00a5d22fc[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 16:50:56 2020 +0200

    polished stable rate debt token comments

[33mcommit 529115dd9814bff09906da9efd8e7c7224111ded[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 16:46:49 2020 +0200

    added stable and variable debt tokens tests

[33mcommit a3326fc86dde5a05c0376ea6b662bbfd98d4b522[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 16:27:19 2020 +0200

    Updated LendingPool to add a method to retrieve debt tokens

[33mcommit 77be1963d142a9cc7dd1cacc7f3e5b8523dff487[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 11:59:49 2020 +0200

    added comments, cleaned up variable debt token, base debt token

[33mcommit 7813e8cec01aa8492dfbdd00bff57918152af1e1[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 11:23:30 2020 +0200

    Added natspec comments to stable debt token, cleaned up stable debt token code

[33mcommit da6273a95124efd5a3d1559ccdc816b5d40f513d[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 00:33:33 2020 +0200

    Removed ETHAddressLib from LiquidationManager

[33mcommit 8f86b44076cccc4c0bb94b66bf5d344f7eff3ef5[m
Author: emilio <emilio@ethlend.io>
Date:   Thu Jul 9 00:16:05 2020 +0200

    Removed CoreLibrary

[33mcommit f1743a5eac594d7c95da32d6ae5fa86199b45b3e[m
Author: The3D <emilio@aave.com>
Date:   Wed Jul 8 17:26:50 2020 +0200

    Fixed liquidation tests

[33mcommit 395e4aa3a730f37e13bc922bb7931e66fef7b699[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 7 17:34:38 2020 +0200

    Updated liquidation

[33mcommit 6b2764f7609c7aa73aa958c0251acb68d6947809[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 7 17:14:44 2020 +0200

    Renamed debt fetching function, updated liquidationManager

[33mcommit 5b840dd577e259b7231e66437f04650059692e6d[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 7 14:04:38 2020 +0200

    Fixed interest redirection tests

[33mcommit d68261c1bc37ec69a0bd40d1484be866d8da0448[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 7 13:57:08 2020 +0200

    Fixed rebalance tests

[33mcommit dd1982010c1db001c3c9d28f32c08b2742d7ee7f[m
Author: The3D <emilio@aave.com>
Date:   Tue Jul 7 12:07:31 2020 +0200

    Fixed swap rate tests

[33mcommit 0d182d6436592cf1499dbd6b29f1e5e942beca31[m
Author: The3D <emilio@aave.com>
Date:   Sun Jul 5 23:44:19 2020 +0200

    Fixed swapBorrowRateMode, rebalanceBorrowRate

[33mcommit 34efb0c9175dafee5b95b6354145a3f761748119[m
Author: The3D <emilio@aave.com>
Date:   Sat Jul 4 09:32:54 2020 +0200

    fixed redeem tests, removed console.log

[33mcommit 30ab5ddec29f4a8d75a93721bfd7b65f61b8d082[m
Merge: e16eed2 7690b22
Author: The3D <emilio@aave.com>
Date:   Sat Jul 4 09:32:01 2020 +0200

    Merge branch 'feat/debt' of gitlab.com:aave-tech/protocol-v2 into feat/debt

[33mcommit e16eed2d03e711ee2abf1c9efe6e3b1410f700ff[m
Author: The3D <emilio@aave.com>
Date:   Fri Jul 3 23:20:02 2020 +0200

    Fixed borrow tests

[33mcommit 7690b22e8e026920b5ef40d1d0702bb5cdfdb924[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Jul 3 12:15:30 2020 +0300

    repo cleanup -1

[33mcommit a784e42b78815aaef64af14c8edfc967ef7e328a[m
Author: The3D <emilio@aave.com>
Date:   Tue Jun 30 14:09:28 2020 +0200

    Initial commit

[33mcommit abc0d3edb64f266dc0e446671c84ed71b430b4ea[m
Author: The3D <emilio@aave.com>
Date:   Sat Jun 27 04:13:32 2020 +0200

    Fixed tests

[33mcommit 1980773a582150c8bf6b8a1edec4b8304a5066af[m
Author: The3D <emilio@aave.com>
Date:   Fri Jun 26 21:28:18 2020 +0200

    Updated test cases

[33mcommit c29857990843e7e03390bd55056490ef756639e3[m
Author: The3D <emilio@aave.com>
Date:   Fri Jun 26 16:58:52 2020 +0200

    Fixed tests

[33mcommit 51fee50e505f961fb9a713fa19ce1ed834ac86ca[m
Author: The3D <emilio@aave.com>
Date:   Fri Jun 26 14:34:44 2020 +0200

    Fixed setup

[33mcommit 9a92cb08f76c2d4e0c45f80e7c2eee017764162b[m
Author: The3D <emilio@aave.com>
Date:   Fri Jun 26 00:39:28 2020 +0200

    Fixed validation logic artifact

[33mcommit 02d943b235143ad41c6145fc84c0aa9320db1fb9[m
Author: The3D <emilio@aave.com>
Date:   Sun Jun 21 01:40:03 2020 +0200

    Refactoring migration

[33mcommit d1f21118c19ed0c0d38141278bb7c7369026c3b6[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Jun 18 17:36:37 2020 +0300

    initial refactoring of liquidation-atoken.spec

[33mcommit 9e76bcf765e7b5134020902d9e917e57d4cc2d86[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Jun 18 15:41:23 2020 +0300

    add prettier

[33mcommit 2883c0f861f7d5e29b27d82180e631dce65b7e15[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Jun 15 10:45:14 2020 +0200

    - Added extra test wallets.

[33mcommit 595d169f5d0d194caeea7b2256c74a8734ceec46[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Sat Jun 13 11:12:49 2020 +0200

    - Migrated all the scenarios tests, except for borrow-repay-variable

[33mcommit ef3e5b2cbbc27f46f3674eee7f62a2c73f67e4ad[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Jun 12 22:12:53 2020 +0200

    - Finished migration of basic structure of scenarios and deposit story.

[33mcommit 0b17abc6ebab9e85eeb7cb86d9382aeac3c71b70[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Jun 12 15:41:52 2020 +0200

    - Finished migration of flashloan.spec.ts.
    - Fixed issue with buidlerevm snapshotting.

[33mcommit 99cbb5f0a4e7c75ddc703ecda0ec402632c19d91[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Jun 12 10:39:42 2020 +0200

    - Fixed typo on configurator.spec test name.
    - Unified error messages for tests on types.ts.
    - Finished migration of core-modifiers.spec.ts.

[33mcommit 57cc16e6650ea2af91b6dcc85c004c618d768a2d[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri Jun 12 09:41:30 2020 +0200

    - Finished migration of configurator.spec.ts

[33mcommit 6ef4ca54b5060157e39cb667e507234e7c3820ce[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Jun 11 17:32:38 2020 +0200

    - Updated buidler-ethers package to rc version to improve time performance of chain operations.

[33mcommit 2e72a55c78c0c41d2424dd9b9dfa303712a74167[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Jun 10 17:01:32 2020 +0200

    - Changes on make-suite and refactoring on tests

[33mcommit 268dcdead81aead13d240bafe92b66a4e4106d5d[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Jun 10 15:47:39 2020 +0300

    fix snapshots

[33mcommit 070b46552a44301e9fdf11c42c92dccdf47d053d[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Jun 10 13:46:42 2020 +0200

    - Finished migration o atoken-transfer tests.

[33mcommit 5cc252b6580f3dc5c4054ca72c86a775bf8b30c9[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Jun 10 12:46:18 2020 +0200

    - Changed ganache service config

[33mcommit 466fa2cafc1742794831ed6f0841f6caa781f543[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Jun 10 12:31:08 2020 +0200

    - Changed ganache version

[33mcommit 84466f11b5140069902c71b2826d91e29a17a023[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Jun 10 10:31:33 2020 +0200

    - Added ganache as buidler network option

[33mcommit 2379fe7ae7a68e5884230145b4299fa26bc92c9f[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Jun 9 16:36:33 2020 +0200

    - Temporary removed nonReentrant from LendingPool, until this fix on ReentrancyGuard is released to prod https://github.com/OpenZeppelin/openzeppelin-contracts/pull/2171.

[33mcommit ac527829fe4fdc25d8ee78f24cb95e6ec5b3c7a5[m
Merge: a683c24 5e52e8c
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Tue Jun 9 12:09:56 2020 +0000

    Merge branch '1-universal-token' into 'master'
    
    Resolve "refactor the code to transfer ETH/ERC20 to the LendingPool in a separate library"
    
    Closes #1
    
    See merge request aave-tech/protocol-v2!1

[33mcommit 5e52e8ced09c1ac187c0fca9f056197fcaf4c094[m
Merge: 43ae2f3 951bc6e
Author: Andrey Ko <kyzia.ru@gmail.com>
Date:   Tue Jun 9 12:08:53 2020 +0000

    Merge branch 'feat/transferToReserve-removal' into '1-universal-token'
    
    Transfer funds related logic of the LendingPool from Core
    
    See merge request aave-tech/protocol-v2!2

[33mcommit 0ac28cd89e6bd2c0d13a964903422a2df9b5811f[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Jun 9 14:24:34 2020 +0300

    change contracts vars declaration

[33mcommit 18e19b4f8410d2aa5c3222ae75711ab371c034e3[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Tue Jun 9 11:11:19 2020 +0200

    - Added getAllReservesTokens for AaveProtocolTestHelpers.

[33mcommit 0453a49f8f1a0a6a5ca7b702d56836ff4b4dd4bb[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Jun 8 21:06:26 2020 +0200

    - Fixed issue on AaveProtocolTestHelpers.
    - Migrated atoken-modifiers tests.

[33mcommit 21e6697eda4f8ddfca833306d15b5fb1aebe1b5f[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Jun 8 17:36:40 2020 +0200

    - Added AaveProtocolTestHelpers

[33mcommit 82de55fdbf15da0b4eed98e589c82bb64baf0870[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Mon Jun 8 14:03:40 2020 +0200

    - Added mocha __setup script with snapshotting

[33mcommit 951bc6ebf60325c45744599aaba478d890a7e276[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Jun 5 11:23:48 2020 +0300

    optimize 0 ETH

[33mcommit d099d3c20e4b70ea254c934c4434f0e6d205f989[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Fri Jun 5 10:35:29 2020 +0300

    fix isETH condition in repay

[33mcommit 0a34cfe88db2b7b02ec1fe7233b0243a10807a86[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Thu Jun 4 17:19:50 2020 +0200

    - Enable compiler optimiser.

[33mcommit a281bdba97df2f3c1f0240ec63aeee272b1d8db7[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Thu Jun 4 10:57:08 2020 +0300

    update universalTransferFromSenderToThis with returnExcess

[33mcommit 43b5c2c8326262f14d84a6de865325a875c263c8[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Jun 3 17:57:41 2020 +0300

    compilation errors fixes, removed: getReserveAvailableLiquidity, transferToUser, transferToFeeCollectionAddress,  transferFlashLoanProtocolFeeInternal

[33mcommit 199d386b3e226e8dc5444457922b789264567ac0[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Jun 3 15:51:17 2020 +0300

    removal of transferToReserve method

[33mcommit 43ae2f36e729b177bfc2539fb81718605c5fafd0[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Jun 3 15:48:59 2020 +0300

    update universalTransferFrom logic, and comments

[33mcommit a41816b32c7624296c7532ec89f0c979a128a236[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Jun 3 14:08:22 2020 +0300

    fix typos in docstrings

[33mcommit e31d5b9bee4c2de7541d96692a85db10b4c0b36c[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Wed Jun 3 14:02:18 2020 +0300

    add doc strings to UniversalERC20, delete remove values there, fixes from MR comments

[33mcommit 03a6249875afd832ed62869a4d97871070fa235e[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Jun 3 12:44:10 2020 +0200

    - Ported LendingPoolAddressesProvider test.

[33mcommit 87a75065e3b66d83b4458d66a278ddbfb3558129[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Wed Jun 3 12:23:21 2020 +0200

    - Added protocol types

[33mcommit 268e749a6d1dfec2f4202cf35e4701db22093bf2[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Jun 2 18:16:27 2020 +0300

    remove SafeERC20 dependency

[33mcommit f3597f670fb56902d552b075c7a23a4fe9cbfefd[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Jun 2 17:16:22 2020 +0300

    remove EthAddressLib

[33mcommit 2dfcc970dac1487845bfaec929afd50ee4a98a6b[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Jun 2 16:54:46 2020 +0300

    fix some typo

[33mcommit fea677a6076d67fd7b4a1dd7f70944a44ca99df2[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Jun 2 16:49:24 2020 +0300

    migration to 1inch UniversalERC20

[33mcommit a683c24deca153c7587ab33dd024906fb447478f[m
Author: andyk <kyzia.ru@gmail.com>
Date:   Tue Jun 2 15:56:44 2020 +0300

    add prettier and editorconfig

[33mcommit b889cb25b67dcdcf1b0e4c587aeb3c246d974e86[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri May 29 18:45:37 2020 +0200

    - Added contracts from v1 of the protocol.

[33mcommit 5ccf06c1a878b7859523bc62bfe9825a7db9e621[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri May 29 17:28:55 2020 +0200

    - Renamed project on package.json

[33mcommit 0ca8e30fb2ed3cb7f3508ab83b44f48bab8f02c9[m
Author: eboado <ernesto.boado.moreira@gmail.com>
Date:   Fri May 29 16:55:31 2020 +0200

    Initial commit
