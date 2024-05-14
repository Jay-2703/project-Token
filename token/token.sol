// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;


contract ContractToken {




    // public variables here
    string public tokenName = "CoinToken";
    string public tokenAbbrv = "CT";
    uint public totalSupply = 0;


    // mapping variable here
    mapping(address => uint) public balances;


    // mint function
    function mint(address addr, uint _amount) public {
        totalSupply += _amount;  
         balances[addr] +=_amount;
    }


    // burn function
    function burn(address addr, uint _amount) public {
        if (balances[addr] >= _amount)
        totalSupply -= _amount;
        balances[addr] -= _amount;  


    }
}
