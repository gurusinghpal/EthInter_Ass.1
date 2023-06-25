# Smart Contract Project

This is a Solidity smart contract that demonstrates the usage of `require()`, `assert()`, and `revert()` statements for condition checking and error handling.

## Description

The AssertionContract allows users to set, increment, and decrement a stored value. It includes three functions:

- `setValue(uint _value)`: Sets the value to the specified `_value` parameter. It uses `require()` to check that the value is greater than zero before updating it.

- `incrementValue(uint _amount)`: Increments the current value by the specified `_amount` parameter. It uses `assert()` to check that the new value is greater than the previous value.

- `decrementValue(uint _amount)`: Decrements the current value by the specified `_amount` parameter. It uses `revert()` to revert the transaction if the amount exceeds the current value.

## Prerequisites

To use this smart contract, you'll need the following:

- Solidity compiler version 0.8.0 or higher
- Ethereum development environment (e.g., Remix, Truffle, Hardhat)
- Test environment (e.g., Ganache)

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertionContract {
    uint public value;
    
    function setValue(uint _value) external {
        // Using require() to check a condition
        require(_value > 0, "Value must be greater than zero");
        
        value = _value;
    }
    
    function incrementValue(uint _amount) external {
        // Using assert() to check an invariant
        uint newValue = value + _amount;
        assert(newValue > value);
        
        value = newValue;
    }
    
    function decrementValue(uint _amount) external {
        // Using revert() to revert the transaction
        if (_amount > value) {
            revert("Amount exceeds current value");
        }
        
        value -= _amount;
    }
}
```

1. Clone this repository or copy the code from the smart contract file.

2. Compile the smart contract using your preferred Solidity compiler.

3. Deploy the smart contract to your chosen Ethereum development environment.

4. Interact with the contract using the provided functions (`setValue`, `incrementValue`, and `decrementValue`).

## Authors

Hetashi Guru Singh Pal 

[@gurusinghpal](https://www.linkedin.com/in/guru-singh-pal-99a305254/)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
