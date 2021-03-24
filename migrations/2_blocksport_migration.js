const BlockSport = artifacts.require("BlockSport");

module.exports = function (deployer) {
  deployer.deploy(BlockSport, "https://ipfs.io/ipfs");
};
