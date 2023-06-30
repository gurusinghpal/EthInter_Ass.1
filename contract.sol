// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    uint public value;
    
    function requireSet (uint _value) external {
        // Using require() to check a condition
        require(_value > 0, "Value must be greater than zero");
        
        value = _value;
    }
    
    function assertIncrement (uint _amount) external {
        // Using assert() to check an invariant
        uint newValue = value + _amount;
        assert(newValue > value);
        
        value = newValue;
    }
    
    function revertDecrement (uint _amount) external {
        // Using revert() to revert the transaction
        if (_amount > value) {
            revert("Amount exceeds current value");
        }
        
        value -= _amount;
    }
}
