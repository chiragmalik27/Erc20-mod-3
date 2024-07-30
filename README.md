# Erc20-mod-3

# StudentToken Smart Contract

The `StudentToken` is an ERC20 token implemented on the Ethereum blockchain. This smart contract allows the creation and management of a fungible token named "Student" with the symbol "STU". The contract includes functionalities for minting, burning, transferring tokens, and checking balances.

## Contract Overview

### Features

- **ERC20 Standard**: The contract adheres to the ERC20 standard for fungible tokens.
- **Token Details**: The token is named "Student" with the symbol "STU" and has 2 decimal places.
- **Ownership**: Only the owner (contract deployer) can mint new tokens.
- **Minting**: Allows the owner to mint new tokens.
- **Burning**: Allows any token holder to burn their tokens.
- **Balance Check**: Allows token holders to check their balance.
- **Transfer**: Allows token holders to transfer tokens to another address.

### Contract Structure

- **State Variables**
  - `TOKEN_NAME`: The name of the token.
  - `TOKEN_SYMBOL`: The symbol of the token.
  - `_totalSupplyTokens`: The total supply of the tokens.

- **Constructor**
  - Initializes the contract with an initial supply of tokens and assigns them to the contract deployer.

- **Functions**
  - `decimals()`: Returns the number of decimal places of the token (overridden to 2).
  - `mintTokens(address to, uint256 amount)`: Allows the owner to mint new tokens.
  - `burnTokens(uint256 amount)`: Allows token holders to burn their tokens.
  - `myBalance()`: Returns the balance of the caller.
  - `transferTokens(address to, uint256 amount)`: Transfers tokens from the caller to another address.
  - `totalSupply()`: Returns the total supply of the tokens.
