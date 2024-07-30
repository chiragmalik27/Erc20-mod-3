// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract StudentToken is ERC20, Ownable {
    // Token details
    string private constant TOKEN_NAME = "Student";
    string private constant TOKEN_SYMBOL = "STU";

    uint256 private _totalSupplyTokens = 0;

    constructor(uint256 initialSupply) ERC20(TOKEN_NAME, TOKEN_SYMBOL) {
        // Mint initial supply to the contract deployer (owner)
        uint256 initialSupplyWithDecimals = initialSupply;
        _mint(msg.sender, initialSupplyWithDecimals);
        _totalSupplyTokens = initialSupplyWithDecimals;
    }

    // Override decimals function to specify the number of decimal places
    function decimals() public view virtual override returns (uint8) {
        return 2;
    }

    // Function to mint new tokens, only the owner can call this
    function mintTokens(address to, uint256 amount) external onlyOwner {
        uint256 amountWithDecimals = amount;
        _mint(to, amountWithDecimals);
        _totalSupplyTokens += amountWithDecimals;
    }

    // Function to burn tokens from the caller's account
    function burnTokens(uint256 amount) external {
        uint256 amountWithDecimals = amount;
        _burn(msg.sender, amountWithDecimals);
        _totalSupplyTokens -= amountWithDecimals;
    }

    // Function to check the token balance of the caller
    function myBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    // Function to transfer tokens to another address
    function transferTokens(address to, uint256 amount) external {
        uint256 amountWithDecimals = amount;
        _transfer(msg.sender, to, amountWithDecimals);
    }

    // Function to get the total supply of tokens
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupplyTokens;
    }
}
