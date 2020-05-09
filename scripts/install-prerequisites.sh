#!bin/bash
## Update
sudo apt update && sudo apt upgrade -y
## Installing the necessary programs
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common gcc g++ make
## Node 14 installation
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt update && sudo apt install -y nodejs
## Node-gyp installation
sudo npm install -g node-gyp
## Yarn installation
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn
## Docker installation
# Unistall old versions
sudo apt remove docker docker-engine docker.io containerd runc
# Set up the repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# Install Docker Engine
sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io
## Docker-compose installation
# Run this command to download the current stable release of Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose
