//SPDX-License-Identifier: MIT
//In this project, you are going to implement a simple messenger functionality in a Smart Contract.
// Through the constructor make sure you write the address that deployed the contract to a variable
// Create a message-variable of the type string, that only the deployer-address can update
// Create a counter, to see how many times the variable was updated.

pragma solidity 0.8.15;

contract BlockchainMessenger{
    uint public changeCounter;
    address public owner;
    string public message;
    constructor(){
        owner = msg.sender;
    }
    function updateMessage(string memory newMessage) public {
        if(msg.sender == owner){
            message = newMessage;
            changeCounter++;
        }
    }

}