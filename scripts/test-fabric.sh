#!bin/bash

cd ../caliper

npm run fabric-v1.1-deps
npm install --no-save grpc@1.10.1 fabric-ca-client@1.1.0 fabric-client@1.1.0

sudo npm run bench -- -c $1 -n network/fabric-v1.1/dev/fabric-node.json

for file in report*.html
do
    mv $file ../reports/fabric/'fabric'-$file
done
