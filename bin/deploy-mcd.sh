#!/bin/bash

. /home/maker/.nix-profile/etc/profile.d/nix.sh

cd src/deployment-scripts

export TESTNET_HOST="parity"
export KEYSTORE_PATH=/testchain-data/keys/DevelopmentChain
export ETH_FROM=0x00a329c0648769A73afAc7F9381E08FB43dBEA72

. lib/setup-env.sh
./deploy-testchain.sh
