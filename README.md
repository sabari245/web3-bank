# WEB 3 BANK

This is a simple implementation of a web3 banking system, with functionalities to transfer, withdraw and store money in the smart contract. This is submitted as an assignment to metacrafter on their Avalance Course.

## functions

**deposit** - to deposit some money
**withdraw** - to withdraw the specified amount if it is in the users account
**transfer** - to transfer the specified amount of wei from one user to another user
**getBalance** - to get the balance of the specified account

## Error Handling

All this function have statements like `require`, `assert` and `revert` to check the correctness and reduce errors.

## Contract

The main contract is `contracts/Bank.sol`. This is the contract that contains the specified functionalities.

! DO NOT USE THIS FOR PRODUCTION UNDER ANY CIRCUMSTANCES !
