#!bin/bash

# Install prerequisites
function installPrerequisites() {
    installNecessaryPrograms
    installNode
    installDocker
    installDockerCompose
    manageDockerAsANonRootUser
    echo 'The system will reboot in 5 seconds.'
    sleep 5
    reboot
}