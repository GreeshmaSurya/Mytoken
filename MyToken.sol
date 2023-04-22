// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public tokName = "Songloger";
    string public tokAbbrv = "SL";
    uint public tSupply = 0;

    mapping(address => uint) public balances;

    function mint (address _address, uint _value) public
    {
        tSupply += _value;
        balances[_address] += _value;
    }

    function burn (address _address, uint _value) public
    {
        if(balances[_address]>=_value)
        {
        tSupply -= _value;
        balances[_address] -= _value;
        }
    }

}
