#!bin/bash
# Update
sudo apt update && sudo apt upgrade -y

# Install necessary programs
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common g++

# Install Node 12 and change to 8.9.0
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt update && sudo apt install -y nodejs
sudo npm cache clean -f
sudo npm install -g n
sudo n 8.9.0

# Install node-gyp
npm install -g

# Install Docker
## Unistall old versions
sudo apt remove docker docker.io containerd runc
## Set up the repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
## Install Docker Engine
sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io

# Configure Docker to start on boot
sudo systemctl enable docker

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
## Activate the changes to groups
newgrp docker
