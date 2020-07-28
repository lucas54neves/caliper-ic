#!bin/bash

cd ../caliper

npm run fabric-v1.1-deps

sudo npm run bench -- -c benchmark/simple/config.yaml -n network/fabric-v1.1/dev/fabric-node.json

for file in report*.html
do
    mv $file ../reports/fabric/'fabric'-$file
done
