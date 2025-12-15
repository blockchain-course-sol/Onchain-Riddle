# Examen 101 - Blockchain Development

## Introduction

This examination will evaluate the blockchain development skills learned during the course. The goal is to understand the OnchainRiddle smart contract provided, integrate it into a Decentralized Application (DApp), and interact with it.

## Getting Started

Follow these steps to complete the examination:

### 1. Smart Contract Review

First, read and understand the [OnchainRiddle smart contract](src/OnchainRiddle.sol) to comprehend its functionality and structure.

### 2. Deploy the Smart Contract

- Deploy the smart contract on your desired test network
- Find and use a faucet to obtain the necessary fees for deployment
- You can use either:
  - This repository directly with Foundry
  - [Remix Ethereum IDE](https://remix.ethereum.org/) as demonstrated in class
- To deploy on testnet via Remix:
  - Navigate to the Deploy section
  - Select Environment → Browser Extension → Injected Provider - MetaMask

### 3. Create the DApp Interface

Once deployed, create a frontend interface for the smart contract. Review the TD examples at [blockchain-course-sol repositories](https://github.com/orgs/blockchain-course-sol/repositories) for reference.

### Non-Exhaustive Features

Feel free to integrate the smart contract into your DApp as you want. Below are some non-exhaustive instructions:

- **Wallet Connection**: Create connect/disconnect buttons with balance and network display
- **On-chain Data Display**: Display on-chain data using either:
  - Indexer (e.g., Subsquid)
  - View functions from the smart contract
- **User Interactions**: All users should be able to:
  - View the current riddle
  - Access the history of riddles
  - Submit answers to riddles

### Advanced Features

- Implement a backend service that automatically triggers `setRiddle` when the current riddle is solved
- Deploy your application using Vercel, Railway, or any other free-tier hosting platform

## Deliverables

1. **Repository**: Submit a link to your GitHub repository containing the complete project
2. **Demo**: Provide a screen recording demonstrating your deployed or local implementation

## Evaluation Criteria

Your work will be evaluated based on:

- Smart contract deployment success
- Frontend functionality and user experience
- Integration quality between smart contract and DApp

Good luck!
