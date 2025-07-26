// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Math Library
library MathLib {
    function add(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }

    function sub(uint a, uint b) internal pure returns (uint) {
        require(b <= a, "Underflow");
        return a - b;
    }
}

// Base Contract
contract VaultBase {
    mapping(address => uint) internal balances;

    event Deposited(address indexed user, uint amount);
    event Withdrawn(address indexed user, uint amount);

    function getBalance(address user) public view returns (uint) {
        return balances[user];
    }
}

// Derived Contract
contract VaultManager is VaultBase {
    using MathLib for uint;

    function deposit() external payable {
        require(msg.value > 0, "Must deposit more than 0");
        balances[msg.sender] = balances[msg.sender].add(msg.value);
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw(uint amount) external {
        require(amount > 0, "Must withdraw more than 0");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] = balances[msg.sender].sub(amount);
        payable(msg.sender).transfer(amount);
        emit Withdrawn(msg.sender, amount);
    }

    function getMyBalance() external view returns (uint) {
        return balances[msg.sender];
    }
}