#!bin/bash

# Test all blockchains
function testAll() {
    # Test Burrow
    testBurrow

    # Test Fabric
    testFabric
}