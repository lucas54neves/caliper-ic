#!bin/bash
# Update
sudo apt update && sudo apt upgrade -y

# Install Git
sudo apt install -y git

# Clone of the 'Caliper-docker' repository
git clone https://github.com/internet-sicherheit/caliper-docker

# Caliper directory
cd caliper-docker/caliper

# Get access to the local update config store via
sudo chown -R $USER:$(id -gn $USER) /home/lucas/.config

# Install dependencies
sudo npm install
