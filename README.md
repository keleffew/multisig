# Strato Multisig Wallet

A smart contract that implements a multi signature wallet in BlockApps STRATO.  

### Overview
This demo app is designed to be deployed on the STRATO blockchain platform.  It uses the multisig.sol contract to demonstrate a solution for a basic 2-3 multisignature fund transfer Workflow.

The idea behind a multi signature wallet is that funds (ether) are held in smart contract and only released to someone else if a majority of the participants sign off on the withdrawal.

In this implementation, there are three participants (_owners 1,2,3).   Any owner can suggest a fund transfer - and funds can be withdrawn if multiple participants approve the withdrawal with a signed message.and this fund transfer gets held in memory until another party signs off on it.  and funds can be withdrawn if multiple participants approve the withdrawal with a signed message.  Anyone may send ETH to the contract, but only the quorom may move them.  This contract is not ERC20 compatible.
