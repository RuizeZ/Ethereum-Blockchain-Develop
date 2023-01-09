//SPDX-License-Identifier: MIT
// Deposits from everyone 
// Withdrawals only in the amount that was deposited by the person who likes to withdraw

pragma solidity 0.8.15;

contract SendWithdrawMoney{
    
    uint public balanceReceived;

    function deposite() public payable{
        balanceReceived += msg.value;
    }

    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
        balanceReceived = address(this).balance;
    }

    function withdrawToAddress(address payable to) public {
        to.transfer(getContractBalance());
        balanceReceived = address(this).balance;
    }

}
