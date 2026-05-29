# 🗳️ Election Voting DApp

![Solidity](https://img.shields.io/badge/Solidity-363636?logo=solidity&logoColor=white)
![Ethereum](https://img.shields.io/badge/Ethereum-3C3C3D?logo=ethereum&logoColor=white)
![Web3.js](https://img.shields.io/badge/Web3.js-F16822?logo=web3.js&logoColor=white)
![Truffle](https://img.shields.io/badge/Truffle-5E464D?logo=ethereum&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933?logo=node.js&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue)

A decentralized election voting application that enables **secure, transparent, and tamper-resistant** digital elections using Ethereum smart contracts. Built to replace traditional paper-based voting with an auditable, trustless on-chain mechanism suitable for student bodies, organizations, and small-scale elections.

---

## ✨ Features

- 👑 **Admin Controls** — Create elections and register candidates
- 🗳️ **One-Person-One-Vote** — Enforced via smart contract logic
- 🔗 **On-Chain Verifiability** — All votes stored on-chain, auditable by anyone
- 📊 **Real-Time Results** — Vote counts sourced directly from the blockchain
- 🔐 **MetaMask Integration** — Secure transaction signing via Web3 wallet

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|-----------|
| Smart Contract | Solidity |
| Blockchain | Ethereum (Ganache — Local) |
| Framework | Truffle |
| Blockchain API | Web3.js |
| Frontend | HTML + JavaScript |
| Wallet | MetaMask |

---

## 📁 Project Structure

```
Election/
├── contracts/
│   ├── Election.sol
│   └── Migrations.sol
├── migrations/
│   ├── 1_initial_migration.js
│   └── 2_deploy_election.js
├── src/
│   ├── index.html
│   ├── js/
│   │   └── app.js
│   └── styles/
├── test/
│   └── election.test.js
├── truffle-config.js
└── package.json
```

---

## 🚀 Setup

### Prerequisites

- Node.js (>= 14)
- npm or yarn
- Truffle (`npm install -g truffle`)
- Ganache (CLI or GUI)
- MetaMask (or any Web3-compatible wallet)

### Installation

```bash
git clone https://github.com/mtahanaeem/Election.git
cd Election
npm install
```

### Compile & Deploy

Make sure Ganache (or another local Ethereum test network) is running.

```bash
truffle compile
truffle migrate --reset --network development
```

> To deploy to a different network, update `truffle-config.js` and use that network name.

### Start Frontend

Open `src/index.html` in your browser. Ensure MetaMask is connected to the same network as your contracts (e.g., `localhost:8545` for Ganache).

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Muhammad Taha Naeem**

- 📧 muhamadtahanaeem.pro@gmail.com
- 🐙 [mtahanaeem](https://github.com/mtahanaeem)
