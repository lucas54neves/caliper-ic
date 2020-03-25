#!/bin/bash
# Atualiazao do sistema
sudo apt update && sudo apt upgrade -y

# Instalacao do Curl
sudo apt install curl -y

# Instalacao do Docker e Docker-compose
sudo apt install docker.io -y && sudo systemctl start docker && sudo systemctl enable docker && sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose

# Instalacao do Node.js
sudo apt install nodejs -y && sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash && sudo apt install npm -y && sudo apt install node-gyp -y && sudo npm install -g node-gyp

# Instalacao do Caliper
cd ~ && git clone https://github.com/hyperledger/caliper.git && cd caliper && git checkout 4156c4da7105fd1c2b848573a9943bfc9900becb && sudo npm install
