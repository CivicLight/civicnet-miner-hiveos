# CivicNet HiveOS Custom Miner

A HiveOS custom miner package for mining **CIVIC (CivicNet)** using the `civiclight` algorithm — CPU-mineable and ASIC-resistant.

Built on [cpuminer-opt](https://github.com/JayDDee/cpuminer-opt) with `civiclight` algo support.

## Installation

1. Go to your Flight Sheet in HiveOS.
2. Set **Miner** to `Custom`.
3. Fill in the following:

| Field | Value |
|---|---|
| Installation URL | `https://github.com/CivicLight/civicnet-miner-hiveos/releases/download/v1.0.0/civicnet-miner-1.0.0.tar.gz` |
| Hash algorithm | `civiclight` |
| Wallet and worker template | `%WAL%` |
| Pool URL | Your pool's stratum address (e.g. `stratum+tcp://nl.rabbitminer.cc:1104`) |
| Pass | `x` (or your pool's required password) |

4. Save and apply the Flight Sheet to your rig.

## Extra config arguments (optional)

You can pass additional `cpuminer-opt` flags via the **Extra config arguments** field in the Flight Sheet, for example:-t 4 to set the number of mining threads.
## Verifying it's running

Once applied, check your rig's dashboard in HiveOS — hashrate (KH/s) and accepted/rejected shares should appear within a minute or so of the miner starting.

## Links

- Website: https://civiclight.xyz
- Explorer: https://explorer.civiclight.xyz
- GitHub: https://github.com/CivicLight
- Telegram: https://t.me/civiclight
- Twitter/X: https://x.com/civiclight_

## Support

Questions or issues? Reach out in our [Telegram](https://t.me/civiclight) or [Discord](https://discord.gg/eSnQsZHEH).
