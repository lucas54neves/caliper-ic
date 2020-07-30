#!bin/bash

echo "Deseja instalar os prerequisitos? [y/n]" ; read prerequisites

if [ $prerequisites = 'y' ]
then
    bash scripts/install-prerequisites.sh
fi

echo "Qual teste deseja realizar? [fabric/burrrow/all]" ; read testSdk

cd caliper
npm install
if [ $testSdk = 'all' ]
then
    cd ../scripts
    bash test-burrow.sh
    bash test-fabric.sh
elif [ $testSdk = 'burrow' ]
then
    cd ../scripts
    bash test-burrow.sh
elif [ $testSdk = 'fabric' ]
then
    cd ../scripts
    bash test-fabric.sh
else
    echo 'Option not registered'
fi
