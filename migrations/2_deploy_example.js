const ContractExample = artifacts.require("ContractExample");

module.exports = function (deployer) {
  deployer.deploy(ContractExample);
};
