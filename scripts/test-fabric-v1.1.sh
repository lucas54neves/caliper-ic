#!bin/bash
# Diretorio do Caliper
cd ~/caliper
# Instala as dependencias do Hyperledger Fabric 1.1
sudo npm run fabric-v1.1-deps
# Testa o Hyperledger Fabric 1.1
sudo npm run bench -- -c ../caliper-ic/scripts/config-benchmark.yaml -n network/fabric-v1.1/dev/fabric-node.json
