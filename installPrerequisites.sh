#!bin/bash

source functions/installNecessaryPrograms.sh
source functions/installNode.sh
source functions/installDocker.sh
source functions/installDockerCompose.sh
source functions/manageDockerAsANonRootUser.sh

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