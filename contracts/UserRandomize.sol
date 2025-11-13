// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface IRandomize {
    function getRandomNumber() external view returns(uint256);
}

contract UsingTandomize {
    function useRandomize(address contractAddress_) public view returns(uint256) {
        IRandomize randomize = IRandomize(address(contractAddress_));
        return randomize.getRandomNumber();
    }
}