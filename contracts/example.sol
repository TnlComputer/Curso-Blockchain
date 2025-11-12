
// las buenas practicas dice que debemos decir que licencia usaremos
// SPDX-License-Identifier: MIT
// Primero le decimos qeu solidity usaremos
pragma solidity ^0.8.12;

contract Example {
    uint number;

    function setNumber(uint x) public {
        number = x;
    }

    function getNumber() public view returns(uint) {
        return number;
    }

}

