#!bin/bash

# Install necessary programs
function installNecessaryPrograms() {
    sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common g++
}