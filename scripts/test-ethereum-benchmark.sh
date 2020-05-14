#!bin/bash
# Caliper directory
cd caliper-docker/caliper

# Install dependencies
sudo npm install
sudo npm i @hyperledger/caliper-cli

# Run Ethereum benchmark
sudo npx caliper launch master --caliper-bind-sut ethereum:1.2.1 --caliper-workspace . --caliper-benchconfig benchmarks/scenario/config.yaml --caliper-networkconfig networks/ethereum/1node/ethereum.json
