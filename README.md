# My Token 

This Solidity program is a simple program that demonstrates the creation of a token with the function to mint and burn.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has two functions which are mint and burn. Mint is used to mint tokens into a certain address , while burn is used to burn the token which are available.

## Getting Started

## Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

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

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the desired function.

# Author

Greeshma Surya

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
