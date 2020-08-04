#!bin/bash

# Test Fabric
function testFabric() {
    # Caliper directory
    cd $1/caliper

    # Install Fabric dependencies
    npm run fabric-v1.1-deps

    # Execute Fabric benchmark
    sudo npm run bench -- -c $1/benchmarks/config4.yaml -n $1/caliper/network/fabric-v1.1/dev/fabric-node.json

    # Move report file to the reports directory
    for file in $1/caliper/report*.html
    do
        mv $file $1/reports/fabric/'fabric'-$file
    done
}