pragma solidity ^0.4.20;

/// @title 2-3 Multisig Wallet for use with Strato
contract multisig {

//struct 

//addresses parameters for three signators
    address public party1;
    address public party2;
    address public party3;

//mapping
mapping(address => bool) signed;

//properties
    uint signatureCount;


//constructor
 function InitMultiSig(address party1, address party2, address party3) public { 
  }

function sendToWallet () public payable {

}

function holdFundsInWallet () {
    if (msg.value > 0)
    Deposit (msg.sender, msg.value);
}
    
}

contract Wallet is multisig {

    struct Transaction {
        address to;
        uint value;
        bytes data;
    }

    // METHODS

    // constructor - just pass on the owner array to the multiowned
    function Wallet(address[] _owners, uint _required, uint _daylimit)
            multiowned(_owners, _required) {
    }
    
    // kills the contract sending everything to `_to`.
    function kill(address _to) onlymanyowners(sha3(msg.data)) external {
        selfdestruct(_to);
    }
    
    // gets called when no other function matches
    function() payable {
        // just being sent some cash?
        if (msg.value > 0)
            Deposit(msg.sender, msg.value);
    }
