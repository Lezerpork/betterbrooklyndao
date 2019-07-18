var ContributionReward = artifacts.require("ContributionReward");

module.exports = function(deployer) {
  deployer.deploy(ContributionReward);
};