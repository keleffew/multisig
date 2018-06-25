# Strato Multisig Wallet

A smart contract that implements a multi signature wallet in BlockApps STRATO.  

### Overview
This demo app is designed to be deployed on the STRATO blockchain platform.  It uses the multisig.sol contract to demonstrate a solution for a basic 2-3 multisignature fund transfer Workflow.

The idea behind a multi signature wallet is that funds (ether) are held in smart contract and only released to someone else if a majority of the participants sign off on the withdrawal.

In this implementation, there are three participants (_owners 1,2,3).   Any owner can suggest a fund transfer - and funds can be withdrawn if multiple participants approve the withdrawal with a signed message.  Once initiated, a fund transfer gets held in memory until another party signs off on it.  Any public contract address may send ETH to the multisig wallet contract by invoking the depositToWallet method. However, only a quorom of owners may decide to move the funds to another address.

For reference this contract is to be used with ETH only, and is not ERC20 compatible.

### How to deploy
To deploy this contract, follow these steps:
<ol>
  <li> First, deploy an instance of Strato.  To get started on azure, follow the deployment steps <a href= "https://github.com/blockapps/azure-getting-started">here</a></li>
  <li> Navigate to the STRATO Management Dashboard by entering the deployed VM's IP/URL in your browser and using the username "admin" with the password you set during deployment/<li>
  <li> In the dashboard, navigate to "Accounts" and create a new EOA account with a username</li>
  <li> Next, navigate to "Contracts" -> "+ Create New Contract" -> and fill out the required forms</li>
 
 You may now interact with your multisig wallet contract!
