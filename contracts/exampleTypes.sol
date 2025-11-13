
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.12;

// ejemplo como trabajar con numeros
// contract example {
//     uint256 amount = 1;
//     uint256 decimals = 18;
   
//     // solidity solo usa entrero, no tiene float o double, 
//     // ejemplo 100,22 seria 10022
//     // un ether seria 1000000000000000000;
    
//     uint256 result = amount * 10**decimals;
    
// }


//ejemplo mapeo
contract example {
    mapping(address => uint256) private balances;

    function getBalance(address addr_) public view returns (uint256){
        return balances[addr_];
    }

    function setBalance(address addr_, uint256 value_) public returns(bool){
        balances[addr_] = value_;
        return true;
    } 
    
}