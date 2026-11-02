// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract StakingRegistry {
    uint256 public activeValidators;
    mapping(address => uint256) public stakedEpoch;

    event ValidatorRegistered(address indexed operator, uint256 validatorId);

    function registerBeaconOperator() external {
        activeValidators += 1;
        stakedEpoch[msg.sender] = block.number;
        emit ValidatorRegistered(msg.sender, activeValidators);
    }
}
