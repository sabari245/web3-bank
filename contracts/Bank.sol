// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Bank {
    mapping(address => uint256) private balances;

    function deposit() public payable {
        assert(msg.value > 0); // Assert statement to ensure a positive deposit amount

        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        bool success = payable(msg.sender).send(amount);
        if (!success) {
            revert("Transfer failed");
        }
    }

    function getBalance(address account) public view returns (uint256) {
        return balances[account];
    }

    function transfer(address to, uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
        emit Transfer(msg.sender, to, amount);
    }

    event Transfer(address indexed from, address indexed to, uint256 amount);
}