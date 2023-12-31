//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions{
    uint256 transactionCounter;

    event Transfer(address from, address to, uint amount, string message, uint256 timestamp,string keyword);

    struct TrasnferStruct{
        address from;
        address to;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TrasnferStruct[] transactions;

    function addToBlockchain(address payable to, uint amount, string memory message,string memory keyword) public{
        TrasnferStruct memory newTransaction = TrasnferStruct(msg.sender,to,amount,message,block.timestamp,keyword);
        transactions.push(newTransaction);
        transactionCounter++;
        emit Transfer(msg.sender,to,amount,message,block.timestamp,keyword);
    }

    function getAllTransactions() public view returns(TrasnferStruct[] memory){
        return transactions;
    }

    function getTransactionCounter() public view returns(uint256){
        return transactionCounter;
    }
}