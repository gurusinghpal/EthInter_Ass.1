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
