---
name: chainforge-blockchain-engineering
description: "Design, implement, review, and verify blockchain systems with threat modeling, test discipline, tokenomics analysis, and deployment safety."
version: 0.1.0
author: CodeGraphTheory
license: MIT
metadata:
  hermes:
    tags: [blockchain, smart-contracts, solidity, foundry, security, tokenomics, audit, octra]
---

# ChainForge Blockchain Engineering

Use this skill when working on smart contracts, protocol architecture, tokenomics, security reviews, or blockchain deployment plans.

## Inputs to gather

- Target chain or VM: EVM, Solana, Move, CosmWasm, Octra, or cross-chain.
- Repository framework: Foundry, Hardhat, Anchor, Move package, CosmWasm workspace, or custom.
- Assets at risk: tokens, governance, fees, user balances, private data, privileged roles.
- Trust assumptions: admins, multisigs, oracles, relayers, bridges, validators, signers.
- Deployment stage: design, prototype, audit prep, testnet, mainnet, upgrade, incident.
- Required output: code, review, threat model, test plan, tokenomics analysis, or deployment checklist.

## Workflow

1. Inspect project instructions and framework files before editing.
2. Identify compiler versions, dependencies, scripts, and test commands.
3. Create an explicit threat model before changing high-value logic.
4. Prefer audited libraries and simple architecture over bespoke cleverness.
5. For EVM, default to Foundry tests when available. Add fuzz and invariant tests for accounting or authorization logic.
6. For Solana, verify account constraints, signer checks, PDA seeds, CPI targets, token program IDs, and close authority behavior.
7. For Octra, identify whether the work targets `octra_pre_client`, `webcli`, `wallet-gen`, RPC integration, faucet or testnet operations, or transaction review before giving commands.
8. For tokenomics, analyze supply, emissions, vesting, liquidity, governance capture, oracle or bridge security, and revenue sources.
9. Run the smallest relevant verification command, then broader tests when practical.
10. Report exact commands, outcomes, risks, and assumptions.

## Review checklist

- Access control is explicit and tested.
- External calls cannot violate state assumptions.
- Signatures use nonces, domain separation, and deadlines.
- Oracle data has freshness, manipulation resistance, and circuit breakers when needed.
- Upgrade paths are justified, timelocked, and storage-safe.
- Token accounting has invariants for supply, shares, rewards, collateral, and fees.
- Admin powers are disclosed and minimized.
- Deployment steps include verification, monitoring, and incident response.

## Octra checklist

- Verify official Octra Labs repository URLs before relying on commands or endpoints.
- Never expose private keys, seed phrases, wallet JSON, `data/wallet.oct`, PINs, or decrypted wallet material.
- For `octra_pre_client`, inspect `wallet.json.example`, `requirements.txt`, async RPC behavior, nonce handling, transaction serialization, and private-key export paths.
- For `webcli`, inspect C++17 build flags, OpenSSL 3 linkage, local server binding, wallet encryption, filesystem permissions, vendored crypto or HTTP code, and transaction builders.
- For `wallet-gen`, prefer cloned-source review over blind remote script execution for high-value use.
- Treat DEVNET, testnet, faucet, and MAINNET ALPHA instructions as volatile. Verify live docs or repo README before acting.

## Pitfalls

- Treating a multisig as a complete security model.
- Ignoring MEV, sandwich risk, oracle manipulation, or liquidity depth.
- Using upgradeability without storage layout tests.
- Shipping tokenomics that only work while emissions grow.
- Claiming audit readiness without tests and a written threat model.
