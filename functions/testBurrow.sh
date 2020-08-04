#!bin/bash

# Test Burrow
function testBurrow() {
    # Caliper directory
    cd $1/caliper

    # Install Burrow dependencies
    npm run burrow-deps

    # Execute Burrow benchmark
    sudo npm run bench -- -c $1/benchmarks/config4.yaml -n $1/caliper/network/burrow/simple/burrow.json

    # Move report file to the reports directory
    for file in $1/caliper/report*.html
    do
        mv $file $1/reports/burrow/'burrow'-$file
    done
}