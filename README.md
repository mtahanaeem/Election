# Election Voting DApp 🗳️

> A decentralized election voting application that enables secure, transparent, and tamper-resistant digital elections using Ethereum smart contracts.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![GitHub issues](https://img.shields.io/github/issues-raw/yourusername/yourrepo)

## Table of Contents

- [About](#about)
- [Tech Stack](#tech-stack)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)
- [Author](#author)

## About

This **Election Voting DApp** allows administrators to create elections and register candidates while enabling voters to cast a single, verifiable vote through an Ethereum smart contract.  
The aim is to replace traditional paper-based voting with a transparent, auditable, and trustless on-chain voting mechanism suitable for student bodies, organizations, and small-scale elections.

## Tech Stack

- **Languages:** Solidity, JavaScript  
- **Frameworks / Tools:** Truffle, Ganache, Node.js, npm  
- **Libraries:** Web3.js (or Ethers.js), basic frontend JavaScript utilities

## Installation

### Prerequisites

- Node.js (>= 14)  
- npm or yarn  
- Truffle (installed globally)  
- Ganache (CLI or GUI) or another local Ethereum test network  
- MetaMask (or any Web3-compatible wallet) in your browser

### Clone and Install

```bash
git clone https://github.com/mtahanaeem/Election.git
cd Election
npm install
```

### Compile and Migrate Contracts

Make sure your local blockchain (Ganache or similar) is running.

```bash
# Install Truffle globally if not installed
npm install -g truffle

# Compile contracts
truffle compile

# Deploy to local development network
truffle migrate --reset --network development
```

> If you are using a different network (e.g., testnet), update the network configuration in `truffle-config.js` and run the migration with that network name.

## Usage

### Start Frontend / Dev Server

If you have a script defined:

```bash
npm run start
```

Otherwise, open the main HTML file directly (for example):

- Open `src/index.html` in your browser  
- Ensure MetaMask is connected to the same network as your contracts (e.g., localhost:8545 for Ganache)

### Basic Contract Interaction (Example)

```js
// src/js/app.js (example)
import Web3 from 'web3';
import electionArtifact from '../build/contracts/Election.json';

async function init() {
  if (window.ethereum) {
    const web3 = new Web3(window.ethereum);
    await window.ethereum.request({ method: 'eth_requestAccounts' });

    const accounts = await web3.eth.getAccounts();
    console.log('Active account:', accounts[0]);

    const networkId = await web3.eth.net.getId();
    const deployedNetwork = electionArtifact.networks[networkId];
    const election = new web3.eth.Contract(
      electionArtifact.abi,
      deployedNetwork && deployedNetwork.address
    );

    // Example: get candidate count
    const candidatesCount = await election.methods.candidatesCount().call();
    console.log('Candidates:', candidatesCount);
  } else {
    console.error('No Ethereum provider found. Please install MetaMask.');
  }
}

init();
```

## Features

- Admin can create an election and register candidates.  
- Enforces **one-person-one-vote** using smart contract logic.  
- All votes are stored on-chain and verifiable by any observer.  
- Real-time vote counts and results sourced directly from the blockchain.  
- Web3 wallet integration (e.g., MetaMask) for secure transaction signing.

## Project Structure

Adjust according to your actual structure:

```text
Election/
├─ contracts/
│  ├─ Election.sol
│  └─ Migrations.sol
├─ migrations/
│  ├─ 1_initial_migration.js
│  └─ 2_deploy_election.js
├─ src/
│  ├─ index.html
│  ├─ js/
│  │  └─ app.js
│  └─ styles/
├─ test/
│  └─ election.test.js
├─ truffle-config.js
└─ package.json
```

- `contracts/` — Solidity smart contracts that define election logic.  
- `migrations/` — Truffle migration scripts to deploy contracts.  
- `src/` — Frontend code (HTML, JS, CSS) to interact with the DApp.  
- `test/` — Smart contract tests.  
- `truffle-config.js` — Network and compiler configuration for Truffle.

## Contributing

Contributions are welcome!

1. Fork the repository.  
2. Create a feature branch:  
   ```bash
   git checkout -b feature/your-feature
   ```  
3. Commit your changes:  
   ```bash
   git commit -m "feat: add your feature"
   ```  
4. Push to your branch:  
   ```bash
   git push origin feature/your-feature
   ```  
5. Open a Pull Request describing your changes.

### Guidelines

- Keep commits small and focused.  
- Use clear, conventional commit messages (`feat:`, `fix:`, `docs:`, etc.).  
- Add or update tests for new features or bug fixes when possible.

## License

This project is licensed under the **MIT License**.  
See the [LICENSE](LICENSE) file for more details.

## Author

- **Name:** Muhammad Taha Naeem  
- **GitHub:** https://github.com/mtahanaeem  
- **Contact:** [muhamadtahanaeem.pro@gmail.com]
