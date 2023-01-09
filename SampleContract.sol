//send ether to smartcontract and send it back to the address
//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract SampleContract{
    string public myStr = "Hello World";
    function updateStr(string memory newStr) public payable {
        if(msg.value == 1 ether){
            myStr = newStr;
        }else{
            payable(msg.sender).transfer(msg.value);
        }
    }
}