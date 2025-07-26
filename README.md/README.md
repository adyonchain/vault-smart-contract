# Vault Smart Contract System

A simple Ethereum smart contract vault built in Solidity. Users can deposit and withdraw ETH, with secure logic using a custom math library.

## ✨ Features
- Deposit and withdraw Ether securely
- Emits events for deposit and withdrawal
- Validates inputs using require()
- Uses a custom library for safe math
- Implements inheritance with a base and derived contract
- Includes `getMyBalance()` for convenience

## 🧱 Structure
- `MathLib`: Math library for add/sub with underflow protection
- `VaultBase`: Abstract base contract with balances and events
- `VaultManager`: Full implementation for deposits and withdrawals

## 🧪 How to Test (via Remix)
1. Open [Remix](https://remix.ethereum.org/)
2. Create a new file, paste the content of `VaultSystem.sol`
3. Compile with version `^0.8.20`
4. Deploy the `VaultManager` contract
5. Use:
   - `deposit()` (send ETH)
   - `withdraw(amount)`
   - `getMyBalance()` or `getBalance(address)`

## 📜 License
MIT