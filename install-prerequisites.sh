#!bin/bash
# Update
sudo apt update && sudo apt upgrade -y

# Install necessary programs
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Install Node 14
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt update && sudo apt install -y nodejs

# Install Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn

# Install Docker
## Unistall old versions
sudo apt remove docker docker-engine docker.io containerd runc
## Set up the repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
## Install Docker Engine
sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io

# Install Docker-compose
## Run this command to download the current stable release of Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
## Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose

# Manage Docker as a non-root user
## Create the docker group
sudo groupadd docker
## Add your user to the docker group.
sudo usermod -aG docker $USER

# Configure Docker to start on boot
sudo systemctl enable docker

# Change the node version
sudo npm cache clean -f
sudo npm install -g n
sudo n 8.9.0