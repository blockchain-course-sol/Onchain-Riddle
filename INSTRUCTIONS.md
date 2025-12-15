# OnchainRiddle Smart Contract - Complete Instructions

## Overview

In this project, you'll create a decentralized riddle game on the blockchain where:

- A bot (contract owner) can post riddles with ETH prizes
- Users can submit answers and win ETH rewards
- Anyone can fund the contract by sending ETH
- Winners automatically receive ETH prizes
- All riddle history is preserved on-chain

## Part 1: Understanding the Smart Contract

### Core Components

#### 1. The Riddle Struct

```solidity
struct Riddle {
    string riddle;        // The riddle question
    bytes32 answerHash;   // Hash of the correct answer (for security)
    address winner;       // Address of the solver (or address(0) if unsolved)
    bool isActive;        // Whether the riddle is still open
    uint256 timestamp;    // When the riddle was created
    uint256 prize;        // ETH prize amount for this riddle (in wei)
}
```

#### 2. Key Functions

- `setRiddle()`: Bot posts a new riddle with ETH prize
- `submitAnswer()`: Users submit answers and automatically receive ETH if correct
- `getRiddle()`: View any riddle by ID
- `receive()`: Allows contract to receive direct ETH transfers

## Part 2: Building the Smart Contract

### Step 1: Create the Contract File

### Step 2: Add State Variables

### Step 3: Add Events

### Step 4: Create Constructor and Modifier

- **onlyBot modifier**: Restricts setRiddle access to only the bot address
- **constructor**: Sets the deployer as the bot (owner)
- **receive() function**: Allows contract to receive ETH transfers

### Step 5: Implement setRiddle Function

**Purpose**: Allows the bot to post a new riddle with ETH prize

**Parameters**:

- `string memory _riddle`: The riddle text
- `bytes32 _answerHash`: Hash of the answer
- `uint256 _prizeAmount`: ETH prize in wei

**Checks**:

- Only bot can call (via modifier)
- Previous riddle must be inactive before setting new one
- Contract must have enough balance for the prize
- Increments riddleCounter for each new riddle

### Step 6: Implement submitAnswer Function

**Purpose**: Allows any user to submit an answer attempt and win ETH

**Checks**:

- At least one riddle must exist
- Current riddle must be active
- Riddle must not already be solved

**Key Action**: If answer is correct, transfers ETH prize to winner

### Step 7: Add View Functions

**getRiddle(uint256 \_riddleId)**:

- Returns any specific riddle by ID
- Shows: riddle text, active status, winner, timestamp, prize amount

**getContractBalance()**:

- Returns the current ETH balance of the contract
- Useful to check available funds before setting riddles

### Step 8: Add Funding Functions

**receive() external payable**:

- Allows contract to receive direct ETH transfers
- Updates contract balance
- Emits ContractFunded event

## Exercises for Students

### Exercise 1: Basic Implementation

1. Implement the complete OnchainRiddle contract using one of these options:
   - **Remix IDE** (browser-based): https://remix.ethereum.org/
   - **Foundry** (fast, portable, and modular toolkit): https://book.getfoundry.sh/
   - **Hardhat** (JavaScript/TypeScript development environment): https://hardhat.org/
2. Deploy to you desired testnet network.

### Exercise 2: Backend Development

This backend will:

- Deploy the OnchainRiddle smart contract ( if not already deployed )
- Fund the contract with ETH transfers
- Read riddle information
- Execute functions submitAnswer and setRiddle

## Final Presentation

This project is to be completed in pairs (two people).

For the presentation, there will be 5 minutes to describe the implemented code followed by 5 minutes of Q&A.

Questions may cover both your completed work and the course.

Don't hesitate to detail the technical challenges encountered and the solutions/research you've provided - I value all the work put in.
