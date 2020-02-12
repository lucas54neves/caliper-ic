#!/bin/bash
echo "npm run fabric-v1.1-deps"
npm run fabric-v1.1-deps
echo "docker-compose -f network/fabric-v1.1/dev/docker-compose.yaml up -d"
docker-compose -f network/fabric-v1.1/dev/docker-compose.yaml up -d
echo "npm run bench -- -c benchmark/simple/config-linear-rate.yaml -n network/fabric-v1.1/dev/fabric-node.json"
npm run bench -- -c benchmark/simple/config-linear-rate.yaml -n network/fabric-v1.1/dev/fabric-node.json