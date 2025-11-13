// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Randomize {
    function getRandomNumber() external view returns(uint256) {
        return block.timestamp % 9;
    }
}