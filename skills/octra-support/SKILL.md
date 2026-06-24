---
name: octra-support
description: "Support Octra network wallet, client, RPC, faucet, and security-review workflows with private-key-safe handling and repository-grounded commands."
version: 0.1.0
author: CodeGraphTheory
license: MIT
metadata:
  hermes:
    tags: [octra, wallet, blockchain, security, rpc, testnet]
---

# Octra Support

Use this skill when the user asks about Octra, Octra wallets, Octra clients, Octra RPC, faucet usage, Octra testnet or alpha-mainnet activity, or code review of Octra-related repositories.

## Ground truth first

Octra appears to be an emerging network with fast-moving tooling. Before giving operational commands, inspect the current repository files or current official documentation when available. Prefer official Octra Labs repositories over third-party farming guides.

Known official repositories discovered during profile maintenance:

- `octra-labs/octra_pre_client`: Python terminal wallet client. Its README describes balance and transaction history, sending one or many transactions, private-key or full-wallet export, Python 3.8 or later, `wallet.json`, and RPC default examples using `https://octra.network`.
- `octra-labs/webcli`: C++17 local web wallet client. Its README describes DEVNET and MAINNET ALPHA compatibility, local server usage, OpenSSL 3, `libpvac`, encrypted local wallet storage in `data/wallet.oct`, PIN unlock, stealth transactions, and balance encryption or decryption flows.
- `octra-labs/wallet-gen`: wallet generator UI. Its README describes install scripts from `octra.org` and references `https://faucet.octra.network` for testnet tokens.

## Private-key safety

Never ask the user to paste or upload:

- Private keys.
- Seed phrases.
- `wallet.json`.
- `data/wallet.oct`.
- PINs.
- Decrypted wallet material.
- Faucet auth tokens or API keys.

If key material is needed, instruct the user to keep it local and provide redacted file structure or command output only.

## Workflow

1. Identify the Octra task type: install, wallet generation, send flow, RPC integration, faucet, testnet troubleshooting, webcli build, terminal client review, or security audit.
2. Inspect repository files such as `README.md`, `requirements.txt`, `package.json`, `Makefile`, `setup.sh`, `wallet.json.example`, `rpc_client.hpp`, `wallet.hpp`, `crypto_utils.hpp`, and transaction builder files.
3. Verify platform requirements before commands: Python version for terminal client, C++17 compiler and OpenSSL 3 for webcli, Bun or Node tooling for wallet generation if applicable.
4. Prefer local clone and review over blind remote script execution. If a README uses `curl | bash` or PowerShell `iex`, offer a safer cloned-source path for high-value wallets.
5. Check wallet file permissions, local server binding, RPC endpoint configuration, transaction serialization, nonce handling, error handling, and logging of sensitive values.
6. For troubleshooting, ask for redacted errors and public addresses only. Never request secrets.
7. Clearly label Octra network mode assumptions: DEVNET, testnet, faucet, MAINNET ALPHA, or unknown.

## Review checklist

- Private key import, export, and storage paths are explicit and protected.
- Wallet files are excluded from git and stored with restrictive permissions.
- Local web servers bind to loopback unless the user explicitly accepts LAN exposure.
- PIN-based encryption states algorithm, KDF, salt, nonce, and failure behavior.
- RPC calls validate responses and handle stale, missing, or malformed data.
- Transaction builders cover amount encoding, destination validation, nonce or sequence handling, signature domain separation, and replay resistance.
- Logs and exceptions do not print private keys, PINs, wallet JSON, or decrypted wallet contents.
- Remote install scripts are treated as untrusted until inspected.

## Output expectations

For Octra answers, include:

1. What was verified from files or docs.
2. Commands or code, if requested.
3. Private-key safety notes.
4. Network mode assumptions.
5. Remaining risks or checks before using real funds.
