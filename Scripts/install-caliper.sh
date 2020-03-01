#!/bin/bash

# O script deve ser executado como root

echo "apt update -y && apt upgrade -y"
apt update -y && apt upgrade -y
echo "apt install curl -y"
apt install curl -y
echo "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
echo "nvm install v8.9.0"
nvm install v8.9.0
echo "apt install npm -y"
apt install npm -y
echo "apt-get install node-gyp -y"
apt-get install node-gyp -y
echo "npm install -g node-gyp"
# erro no npm
npm install -g node-gyp
echo "apt install docker.io"
apt install docker.io -y
echo "systemctl start docker"
systemctl start docker
echo "systemctl enable docker"
systemctl enable docker
echo "docker --version"
docker --version
echo "curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose"
curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
echo "chmod +x /usr/local/bin/docker-compose"
chmod +x /usr/local/bin/docker-compose
echo "docker-compose --version"
docker-compose --version
echo "git clone https://github.com/hyperledger/caliper.git"
git clone https://github.com/hyperledger/caliper.git
echo "cd caliper"
cd caliper
echo "git checkout 4156c4da7105fd1c2b848573a9943bfc9900becb"
git checkout 4156c4da7105fd1c2b848573a9943bfc9900becb
echo "npm install"
npm install