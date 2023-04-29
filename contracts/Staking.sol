// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/Staking721Base.sol";
import "@thirdweb-dev/contracts/base/ERC721Base.sol";

contract Staking is Staking721Base {
    constructor(
        uint256 _timeUnit,
        uint256 _rewardsPerUnitTime,
        address _stakingToken,
        address _rewardToken,
        address _nativeTokenWrapper
    ) Staking721Base(_timeUnit, _rewardsPerUnitTime, _stakingToken, _rewardToken, _nativeTokenWrapper) {}

    function _mintRewards(address _staker, string memory _rewards) internal {
    ERC721Base tokenContract = ERC721Base(rewardToken);
    tokenContract.mintTo(_staker, _rewards);
}

}