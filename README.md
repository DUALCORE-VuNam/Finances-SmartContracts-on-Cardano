# Financial Smart Contracts Suite

## Overview
This repository contains a suite of smart contracts designed for decentralized financial applications (DeFi).  
The contracts aim to provide **secure, transparent, and composable financial primitives** for building next-generation decentralized services on Cardano.

Key objectives:
- ✅ Enhance financial inclusion through trustless agreements  
- ✅ Ensure robustness with formal methods and audits  
- ✅ Provide modular, reusable, and extensible contracts  

---

## Features
- **Lending & Borrowing** – trustless collateralized loans  
- **Staking Mechanisms** – incentives for long-term participation  
- **Escrow Contracts** – secure conditional payments  
- **ROSCA/Group Savings Models** – rotating savings and credit associations  
- **Stablecoin & Token Utilities** – financial operations with native assets  

---

## Tech Stack
- **Language**: Plutus (Haskell-based smart contract language)  
- **Domain-Specific Layer**: Marlowe (for financial contracts)  
- **Node & Ledger**: Cardano Node & Ledger rules  
- **APIs**: Ogmios / GraphQL for integrations  
- **Testing & Simulation**: Plutus Playground, QuickCheck, Property-based testing  

---

## Repository Structure

---

## Getting Started
1. Clone the repository:
   ```bash
   git clone https://github.com/DUALCORE-VuNam/Finances-SmartContracts.git
   
cabal build all
cabal test

