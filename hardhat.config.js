require("@nomiclabs/hardhat-waffle");

/**
 * @type import('hardhat/config').HardhatUserConfig
 */

const ALCHEMY_GOERLI_URL =
  "https://eth-goerli.alchemyapi.io/v2/O38Edb4ZsFU9pHygWFcaT4PMF54xrsOk";

const DANCER =
  "b64c8875e978cd2c53de64d4b24156b357f0cb62e270a76ea16c7f2f7ee7ac53";

module.exports = {
  solidity: "0.8.4",
  networks: {
    goerli: {
      url: ALCHEMY_GOERLI_URL,
      accounts: [`0x${DANCER}`],
    },
  },
};
