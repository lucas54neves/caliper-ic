#!bin/bash
# Change Node version
sudo npm cache clean -f
sudo npm install -g n
sudo n $1
