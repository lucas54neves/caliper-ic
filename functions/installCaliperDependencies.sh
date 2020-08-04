#!bin/bash

# Install Caliper dependencies
function installCaliperDependencies() {
    # Caliper directory
    cd $1/caliper

    # Get access to the local update config store
    sudo chown -R $USER:$(id -gn $USER) /home/lucas/.config

    # Install Caliper dependencies
    npm install
}