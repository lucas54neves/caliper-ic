#!bin/bash

cd ../caliper

npm run burrow-deps

sudo npm run bench -- -c benchmark/simple/config.yaml -n network/burrow/simple/burrow.json

for file in report*.html
do
    mv $file ../reports/burrow/'burrow'-$file
done