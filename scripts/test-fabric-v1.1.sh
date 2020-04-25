#!bin/bash
# Diretorio do Caliper
cd ~/caliper
# Instala as dependencias do Hyperledger Fabric 1.1
sudo npm run fabric-v1.1-deps
# Testa o Hyperledger Fabric 1.1
#sudo npm run bench -- -c benchmark/simple/config-linear-rate.yaml -n network/fabric-v1.1/dev/fabric-node.json
sudo npm run bench -- -c benchmark/simple/test-fabric.yaml -n network/fabric-v1.1/dev/fabric-node.json
