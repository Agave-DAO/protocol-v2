```
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&BG5J?7~~^:::....:::^~~7?J5GB&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&BPJ7~^:..........................:^~7JPB&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@&GY7^........................................^7YG&@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@#57^................................................^75#@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@#Y~:......................................................:~Y#@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@&P!:............................................................:!P&@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@#Y^..................................................................^Y#@@@@@@@@@@@@@@
@@@@@@@@@@@@#J:......................................................................:J#@@@@@@@@@@@@
@@@@@@@@@@&Y:..........................................................................:Y&@@@@@@@@@@
@@@@@@@@@G^.....................................:77:.....................................^G@@@@@@@@@
@@@@@@@&?......................................:?JJ?:......................................?&@@@@@@@
@@@@@@B~....................:^................^?JJJJ?^................^:....................~B@@@@@@
@@@@@G:.....................!Y?!:............^?JJJJJJ?^............:!?Y!.....................:G@@@@@
@@@@P.......................?YYYJ7~.........:?JJJJJJJJ?:.........~7JYYY?.......................P@@@@
@@@G:......................:YYYYYYY?~:.....:?J????????J?:.....:~?YYYYYYY:......................:G@@@
@@#^.......................^YYYYYYYYYJ!:...7J??????????J7...:!JYYYYYYYYY^.......................^#@@
@@!........................~YYYYYYYYYYYJ!.~??????????????~.!JYYYYYYYYYYY~........................!@@
@P.........................~YYYYYYYYYYYYY??????????????????YYYYYYYYYYYYY~.........................P@
@~.............:7!~^:......^YYYYYYYYYYYYY??????????????????YYYYYYYYYYYYY^......:^~!7:.............~@
P..............:7???77!^:..:YYYYYYYYYYYYJ??????????????????JYYYYYYYYYYYY:..:^!77???7:..............P
7...............!?7777??7!~^JYYYYYYYYYYY?777777777777777777?YYYYYYYYYYYJ^~!7??7777?!...............7
^...............~777777777777?JYYYYYYYYJ77777777777777777777JYYYYYYYYJ?777777777777~...............^
................^777777777777777?JYYYYYJ77777777777777777777JYYYYYJ?777777777777777^................
.................!7777777777777777?JYYY?77777777777777777777?YYYJ?7777777777777777!.................
.................~7777777777777777777JY?77777777777777777777?YJ7777777777777777777~.................
^................:!7!!!!!!!!!!!!!!!!!!77!!!!!!!!!!!!!!!!!!!!77!!!!!!!!!!!!!!!!!!7!:................^
7.................^!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!^.................7
P..................~!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!~..................P
@~.................:!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!:.................~@
@P..................:!!!!!!!!!!!!!!!!777!!!!!!!!!!!!!!!!!!!!777!!!!!!!!!!!!!!!!:..................P@
@@! .................:!!!!!!!!!!!~!JYYYYJ7~!!!!!!!!!!!!!!~7JYYYYJ!~!!!!!!!!!!!:................. !@@
@@#:..................:~!~~~~~~~~~?YYYYYYJ~~~~~~~~~~~~~~~~JYYYYYY?~~~~~~~~~!~:..................:#@@
@@@G....................~~~~~~~~~~!?JYYYJ!~~~7??7777??7~~~!JYYYJ?!~~~~~~~~~~....................G@@@
@@@@P....................^~~~~~~~~~~!!!!~~~~~7YYYYYYYY7~~~~~!!!!~~~~~~~~~~^....................P@@@@
@@@@@G: ...................^~~~~~~~~~~~~~~~~~~~!7777!~~~~~~~~~~~~~~~~~~~^................... :G@@@@@
@@@@@@B^ ...................:^~~~~~~~~~~~~~~~~~~^^^^~~~~~~~~~~~~~~~~~~^:................... ^B@@@@@@
@@@@@@@&?. ....................:^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^:.................... .?&@@@@@@@
@@@@@@@@@P^ ......................:^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:...................... ^P@@@@@@@@@
@@@@@@@@@@&J: ...................  ...::^^^^^^^^^^^^^^^^^^^^::...  ................... :J&@@@@@@@@@@
@@@@@@@@@@@@#?.  ....................  ......::::::::::......  ....................  .?#@@@@@@@@@@@@
@@@@@@@@@@@@@@#J:   .....................                  .....................   :J#@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@&5!.   ......................................................   .!5&@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@#Y~.    ..............................................    .~Y#@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@BY!:                                                :!YB@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@&GJ!:.                                      .:!JG&@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&BPJ7^:.                          .:^7JPB&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&BP5J7!~^:....  ....:^~!7J5PB&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
```

# Agave Protocol

This repository contains the smart contracts source code and markets configuration for Agave Protocol. The repository uses Docker Compose and Hardhat as development enviroment for compilation, testing and deployment tasks.

## What is Agave?

Agave is a decentralized non-custodial liquidity markets protocol in Gnosis Chain where users can participate as depositors or borrowers. Depositors provide liquidity to the market to earn a passive income, while borrowers are able to borrow in an overcollateralized (perpetually) or undercollateralized (one-block liquidity) fashion. It was initially forked from Aave protocol v2 and introduced new features.

## What changed?

The Oracle contract currently handles chainlink failure more safely, in line with the approach followed by other well known Defi protocol called Compound. 

It is possible to repay debt and execute liquidations by directly burning the corresponding agTokens, rather than being forced to transfer the reserve asset.

Deposit and Borrow limits have been imposed to cap asset exposure and optimize risk management. 

## Documentation

As a fork of Aave v2, a lot of the technical documentation of Aave V2 is still relevant and can be acessed in their website [Aave V2 documentation](https://docs.aave.com/developers/v/2.0/). At the documentation you can learn more about the protocol, see the contract interfaces, integration guides and audits.

For getting more recent documentation made by the Agave team, please check the [Agave Wiki](https://www.notion.so/agavedev/Agave-Docs-a0cb462422b941d89a6dc646cdb1bdf8).

A more detailed and technical description of the protocol can be found in this repository, [here](./aave-v2-whitepaper.pdf)

## Audits

- MixBytes (16/09/2020 - 03/12/2020): [report](./audits/Mixbytes-aave-v2-03-12-2020.pdf)
- PeckShield (29/09/2020 - 03/12/2020) : [report](./audits/Peckshield-aave-v2-03-12-2020-EN.pdf) (Also available in Chinese in the same folder)
- CertiK (28/09/2020 - 02/12/2020): [report](./audits/Certik-aave-v2-03-12-2020.pdf)
- Consensys Diligence (09/09/2020 - 09/10/2020): [report](https://consensys.net/diligence/audits/2020/09/aave-protocol-v2/)
- Certora, formal verification (02/08/2020 - 29/10/2020): [report](./audits/Certora-FV-aave-v2-03-12-2020.pdf)
- SigmaPrime (January 2021): [report](./audits/SigmaPrime-aave-v2-01-2021.pdf)

## Connect with the community

You can join at the [Discord](https://discord.gg/Mb6Z4qmtn5) channel or at the [Governance Forum](https://commonwealth.im/agave/) for asking questions about the protocol or talk about Agave with other peers.


## Setup

The repository uses Docker Compose to manage sensitive keys and load the configuration. Prior any action like test or deploy, you must run `docker-compose up` to start the `contracts-env` container, and then connect to the container console via `docker-compose exec contracts-env bash`.

Follow the next steps to setup the repository:

- Install `docker` and `docker-compose`
- Create an enviroment file named `.env` and fill the next enviroment variables

```
# Mnemonic, only first address will be used
MNEMONIC=""

# Add Alchemy or Infura provider keys, alchemy takes preference at the config level
ALCHEMY_KEY=""
INFURA_KEY=""


# Optional Etherscan key, for automatize the verification of the contracts at Etherscan
ETHERSCAN_KEY=""

# Optional, if you plan to use Tenderly scripts
TENDERLY_PROJECT=""
TENDERLY_USERNAME=""

```

## Markets configuration

The configurations related with the Agave Markets are located at `markets` directory. You can follow the `IAaveConfiguration` interface to create new Markets configuration or extend the current Agave configuration.

Each market should have his own Market configuration file, and their own set of deployment tasks, using the Agave market config and tasks as a reference.
