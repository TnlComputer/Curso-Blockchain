
// las buenas practicas dice que debemos decir que licencia usaremos
// SPDX-License-Identifier: MIT
// Primero le decimos qeu solidity usaremos
pragma solidity ^0.8.12;

contract Example {
    uint number;
    address owner;

    // como declaramos un constructor
    constructor () {
        owner = msg.sender;
    }

    // Se utiliza para crear nuestros propieos modificadores y cuando queremos que sea solo el 
    // propietario que use cual o tal funcion solo ponemos el modificador despues de public
    modifier  onlyOwner {
        require(owner == msg.sender, "ERROR: Tan solo el propietario puede ejecutar esta funcion");
        // siempre se utiliza para terminar un modifier _;
        _;
    }

    function setNumber(uint x) public onlyOwner  {
        require(owner == msg.sender, "ERROR: Tan solo el propietario puede ejecutar esta funcion");
        number = x;
    }

    // payable se utiliza para recibir pagos para criptomoneda
    // function invitemeaCoffee() public payable {
    //     require(msg.value == 55555555);
    // }

    function getNumber() public view returns(uint) {
        return number;
    }

}

