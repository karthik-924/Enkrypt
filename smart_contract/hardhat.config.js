//https://eth-goerli.g.alchemy.com/v2/WuLPEhxLkfjpXmXOGe61k7rM09oRZC4B
require("@nomiclabs/hardhat-waffle")

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.19",
  networks: {
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/WuLPEhxLkfjpXmXOGe61k7rM09oRZC4B",
      accounts: [`Alchemy's private key`]
    }
  }
};
