pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/ContributionReward.sol";

contract TestContributionReward {
	ContributionReward contributionreward = ContributionReward(DeployedAddresses.ContributionReward());


uint expectedRewardId = 10;

address expectedRewardId = address(this);

function testUserCanRedeemReputation() public {
  uint returnedId = ContributionReward.redeemReputation(expectedRewardId);

  Assert.equal(returnedId, expectedRewardId, "ContributionReward of the expected Reward should match what is returned.");
}

function testGetRewardedAddressByRewardId() public {
  address Rewarded = ContributionReward.rewarded(expectedRewardId);

  Assert.equal(Rewarded, expectedRewarded, "Owner of the expected Reward should be this contract");
}

function testGetRewardedAddressByRewardIdInArray() public {
  // Store adopters in memory rather than contract's storage
  address[16] memory Rewarded = ContributionReward.getRewarded();

  Assert.equal(Rewarded[expectedRewardId], expectedRewarded, "Owner of the expected pet should be this contract");
}