#!bin/bash
# Instala o Git
sudo apt-get install -y git
# Clona o repositorio do Caliper
git clone https://github.com/hyperledger/caliper.git ~/
# Entra no diretorio do Caliper
cd ~/caliper
# Muda a versao do Caliper
git checkout 4156c4da7105fd1c2b848573a9943bfc9900becb
# Instala as dependencias do Caliper
npm install
