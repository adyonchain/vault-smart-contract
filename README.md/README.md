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


## STEP BY STEP:
1. Math Library (MathLib)
We define a custom math library with safe add() and sub() functions.
This library is used in the Vault contracts to avoid overflow/underflow (even though Solidity 0.8+ handles this by default).

<img width="886" height="314" alt="image" src="https://github.com/user-attachments/assets/2defc18e-6328-4b81-97cf-baa4c505a229" />

2. Base Contract: VaultBase
This contract:
   - Uses the math library.
   - Stores user balances in a mapping.
   - Defines events for deposits and withdrawals.
   - Provides a getter function to check balances.
internal visibility allows the derived contract to access the data.

<img width="886" height="256" alt="image" src="https://github.com/user-attachments/assets/49c54f54-d125-47e0-ae97-d4939d1b6022" />

3. Derived Contract: VaultManager
   - Inherits from VaultBase.
   - deposit() accepts ETH and updates balance.
   - withdraw() checks if user has enough ETH and sends it.
   - Emits events on each action.

<img width="886" height="370" alt="image" src="https://github.com/user-attachments/assets/b874b010-e89b-4547-b666-45593a50f8f9" />


## 📜 Compile the Contract
   1. Go to Solidity Compiler
   2. Select version 0.8.x
   3. Click Compile VaultSystem.sol

## 📜Deploy the Contract
   1. Go to Deploy & Run Transactions
   2. Environment: JavaScript VM (for local testing)
   3. Contract: Select VaultManager (not VaultBase)
   4. Click Deploy

<img width="463" height="850" alt="image" src="https://github.com/user-attachments/assets/3a0ca691-5767-488b-8c40-3c581669b42e" />


## 📜 Test Deposit
   1. In the Deployed Contracts panel:
   2. Expand VaultManager
   3. Under Value, enter e.g., 1 ether
   4. Click deposit()

<img width="472" height="614" alt="image" src="https://github.com/user-attachments/assets/ad684a3e-564e-4bb6-8092-8eb4d082633c" />
<img width="886" height="116" alt="image" src="https://github.com/user-attachments/assets/cb34f375-d8bc-4f1a-a102-a051e482eb95" />
## ✅ Check that Deposited event appears and balance updates.


## 📜 Test Withdraw
Call withdraw() with amount in wei (e.g., 1000000000000000000 for 1 ETH).

<img width="466" height="595" alt="image" src="https://github.com/user-attachments/assets/0ff9e374-e47d-4980-a373-d208b9ed7363" />
<img width="886" height="150" alt="image" src="https://github.com/user-attachments/assets/b71dbe72-a0e6-453f-bb48-b2dc23ffad80" />
## ✅ Check balance reduces and Withdrawn event is emitted.


## 📜 Check getBalance()
Use your address in the getBalance() input.
Aka Copy your wallet address from the ACCOUNT dropdown in Remix (top-right).

<img width="463" height="653" alt="image" src="https://github.com/user-attachments/assets/6f3ae618-ce88-472b-b8a7-16fe428b2e34" />
<img width="886" height="143" alt="image" src="https://github.com/user-attachments/assets/4a87f05c-63b1-4517-b98f-d743ed1ceded" />
