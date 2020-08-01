#!bin/bash

baseDirectory=$PWD

echo "Deseja instalar os prerequisitos? [y/n]" ; read prerequisites

echo "Qual teste deseja realizar? [fabric/burrrow/all]" ; read testSdk

echo "Qual consiguração deseja utilizar?"
echo "[1] - 50/100/150/200/250/300"
echo "[2] - 550/600/750/800/850/900"
echo "[3] - 1050/1100/1150/1200/1250/1300"
read config

if [ $config = 1 ]
then
    benchmarkPath=$baseDirectory'/benchmarks/config.yaml'
elif [ $config = 2 ]
then
    benchmarkPath=$baseDirectory'/benchmarks/config2.yaml'
elif [ $config = 3 ]
then
    benchmarkPath=$baseDirectory'/benchmarks/config3.yaml'
else
    echo 'Option not registered'
fi


if [ $prerequisites = 'y' ]
then
    bash scripts/install-prerequisites.sh
fi



cd caliper
npm install
if [ $testSdk = 'all' ]
then
    cd ../scripts
    bash test-burrow.sh $benchmarkPath
    bash test-fabric.sh $benchmarkPath
elif [ $testSdk = 'burrow' ]
then
    cd ../scripts
    bash test-burrow.sh $benchmarkPath
elif [ $testSdk = 'fabric' ]
then
    cd ../scripts
    bash test-fabric.sh $benchmarkPath
else
    echo 'Option not registered'
fi
