//send ether to smartcontract and send it back to the address
//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract SampleFallback{

    uint public lastValueSent;
    string public lastFunctionCalled;
    uint public myUint;

    function setMyUint(uint newUint) public {
        myUint = newUint;
    }
    // receive function: allows smart contract receives value
    receive() external payable{
        lastValueSent = msg.value;
        lastFunctionCalled = "receive";
    } 
    // if CALLDATA is not any known input, it will call fallback function
    // if there is no receice function, send money to smart contract will call payble fallback function
    fallback() external payable{
        lastValueSent = msg.value;
        lastFunctionCalled = "fallback";
    }
}