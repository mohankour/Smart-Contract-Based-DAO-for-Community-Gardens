# Smart Contract-Based DAO for Community Gardens

This project is a basic implementation of a DAO (Decentralized Autonomous Organization) to manage community gardens in a decentralized and democratic way. Community members can join the DAO, propose initiatives (like planting new crops or expanding the garden), and vote on these proposals.

## 📌 Project Overview

- **Title:** Smart Contract-Based DAO for Community Gardens
- **Smart Contract:** `CommunityGardenDAO` (in `Project.sol`)
- **Language:** Solidity
- **Purpose:** Enable transparent decision-making and collective governance for urban or rural community gardens.

---

## 🛠 Technologies Used

- **Solidity (v0.8.x)**
- **Hardhat** *(recommended for testing and deployment)*
- **Ethereum / EVM-compatible networks*

---

## 📂 Project Structure


---

## 🧠 Key Features

### ✅ Core Smart Contract Functions

1. **addMember(address)**  
   Adds a new member to the DAO (only callable by the owner).

2. **submitProposal(string description)**  
   Allows members to submit a proposal for garden improvements or community actions.

3. **voteOnProposal(uint proposalId)**  
   Members can vote on existing proposals. Proposals are marked as executed if they receive more than 2 votes (for simplicity).

4. **getProposalCount()**  
   Returns the total number of proposals submitted.

---

contract address:0x46cB7530fE6a138784161Ad51205aef7381d4e07
![image](https://github.com/user-attachments/assets/991ab7ab-63ed-4f40-b383-6c2f428dae18)

