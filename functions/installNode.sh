#!/bin/bash

# Install Node 8.9.0 and Node-gyp
function installNode() {
    # Install Node 12
    sudo apt install -y curl
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt update && sudo apt install -y nodejs

    # Change to Node 8.9.0
    sudo npm cache clean -f
    sudo npm install -g n
    sudo n 8.9.0

    # Install node-gyp
    npm install -g
}
