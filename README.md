# ChainForge


<p><strong>Docs:</strong> <a href="https://graphtheory.xyz/chainforge/">https://graphtheory.xyz/chainforge/</a></p>

ChainForge is a Hermes Agent profile for serious blockchain engineering.

Template lineage: built from [codegraphtheory/hermes-profile-template](https://github.com/codegraphtheory/hermes-profile-template).

[![Built from Hermes Profile Template](https://img.shields.io/badge/built%20from-hermes--profile--template-blue)](https://github.com/codegraphtheory/hermes-profile-template)

It is designed for builders who need production-grade help with smart contracts, protocol architecture, tokenomics, security reviews, audits, and deployment planning. ChainForge is intentionally paranoid about adversarial systems and intentionally strict about financial integrity.

## What ChainForge is for

Use ChainForge when you want help with:

- Solidity, Foundry, Hardhat, OpenZeppelin, Solady, and EVM protocol work.
- Smart contract implementation, review, testing, and hardening.
- Threat models for contracts, protocols, bridges, governance, oracles, and token systems.
- Tokenomics and incentive design.
- Audit readiness and security checklists.
- Deployment plans with multisig, timelock, verification, monitoring, and incident response.
- Cross-chain architecture across EVM, Solana, Move, CosmWasm, and Octra when enough context is available.
- Octra wallet and client workflows, including `octra_pre_client`, `webcli`, wallet generation, faucet usage, encrypted local wallet storage, transaction review, and RPC integration.

ChainForge will not help build rug pulls, hidden admin traps, exploit tooling against live users, fake audit claims, or deceptive tokenomics.

## Install

```bash
hermes profile install github.com/codegraphtheory/chainforge --alias
chainforge chat
```

If you do not want an alias:

```bash
hermes profile install github.com/codegraphtheory/chainforge --name chainforge
hermes -p chainforge chat
```

## Configure model credentials

ChainForge includes `.env.EXAMPLE` with optional provider keys. If your default Hermes setup already has model credentials, you may not need to add anything.

If needed:

```bash
cp ~/.hermes/profiles/chainforge/.env.EXAMPLE ~/.hermes/profiles/chainforge/.env
# edit ~/.hermes/profiles/chainforge/.env
```

Never commit `.env` or real credentials.

## Example prompts

```text
Review this Solidity repository for reentrancy, role-control, oracle, and upgradeability risks. Run the relevant tests and summarize findings by severity.
```

```text
Design an ERC-4626 vault with guarded deposits, pausable emergency controls, and Foundry fuzz tests. Explain the accounting invariants.
```

```text
Threat model this bridge architecture. Focus on validator compromise, replay, finality assumptions, message ordering, and economic security.
```

```text
Analyze this tokenomics design for emissions sustainability, governance capture, liquidity risks, and user incentive alignment.
```

```text
Review this Octra webcli checkout for wallet encryption, local-server exposure, transaction construction, OpenSSL usage, and private-key handling risks.
```

## Validate the profile

From this repository:

```bash
python3 scripts/validate_profile.py .
```

## Local development

Clone and install locally:

```bash
git clone https://github.com/codegraphtheory/chainforge.git
cd chainforge
python3 scripts/validate_profile.py .
hermes profile install . --name chainforge-local --yes
hermes -p chainforge-local chat
```

## Generate a related profile

ChainForge is based on the CodeGraphTheory Hermes profile template and includes the deterministic profile generator.

Edit `templates/profile.params.yaml`, then run:

```bash
python3 scripts/generate_profile.py \
  --params templates/profile.params.yaml \
  --output ../my-blockchain-profile

cd ../my-blockchain-profile
python3 scripts/validate_profile.py .
```

## Files to customize

- `SOUL.md`: ChainForge identity, operating principles, scope, refusals, and output contract.
- `distribution.yaml`: Hermes profile distribution metadata.
- `config.yaml`: model, toolsets, terminal, memory, security, and approval defaults.
- `.env.EXAMPLE`: environment variable documentation only.
- `skills/`: reusable procedures bundled with the profile.
- `AGENTS.md`: instructions for AI coding agents that maintain this repository.

## License

MIT. See `LICENSE`.
