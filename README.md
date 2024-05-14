# Project: Smart Contract

This solidity smart contract is intended to create, manage, and utulize the features of a basic token system known as CoinToken(CT). It allows for the minting (creating) and burning (reduce) of tokens, as well as confirming the balance of the adrress. 

# Getting Started

### Executing the program 
 I use remix: https://remix.ethereum.org/ to make this program. It is a website, hence, download in not needed. 

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

```
- **SPDX-License-Identifier: MI** : T indicates the license under which the code is released.
- **pragma solidity 0.8.25;** : Specifies the version of the solidity that is used.

I declared ContractToken as a contract that allows the user to mint and burn tokens. This contract contains public variables, a mapping , and functions for mining and burning tokens. 

## Public Variables 
```solidity
contract ContractToken {

    // public variables here
    string public tokenName = "CoinToken";
    string public tokenAbbrv = "CT";
    uint public totalSupply = 0;
```
- the public variables represent the TokenName with a value of CoinToken, with its abbreviation of CT, and lastly, the total supply with a value of 0 

## Mapping Variable 
```solidity
mapping(address => uint) public balances;

```
- A variable that associates Ethereum addresses with their token balances.
  
# Functions

## Mint Function 

```solidity
function mint(address addr, uint _amount) public {
    totalSupply += _amount;  
    balances[addr] += _amount;
}
```
- This mint function is initialized to allows the contract owner to mint or create new tokens and assign them to a specific address 

## Burn Function 
```solidity
function burn(address addr, uint _amount) public {
    if (balances[addr] >= _amount)
    totalSupply -= _amount;
    balances[addr] -= _amount;  
}
```
- This burn function is initialized to allows the contract owner to burn or reduce new tokens and assign them from a specific address 

## License
This project is licensed under the MIT License - see the LICENSE.md file for details
