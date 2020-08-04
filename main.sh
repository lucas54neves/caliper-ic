# #!bin/bash

# Import functions
for file in functions/*.sh
do
    source $file
done

# Base directory
baseDirectory=$PWD

# Variable for the menu
option=-1

# Program loop
while [ $option -ne 0 ]; do
    # Print menu
    printMenu

    # Read response
    printf 'Response: '
    read option
    echo

    # Execute what was chosen
    if [ $option -eq 1 ]
    then
        installPrerequisites $baseDirectory
    elif [ $option -eq 2 ]
    then
        installCaliperDependencies $baseDirectory
    elif [ $option -eq 3 ]
    then
        testAll $baseDirectory
    elif [ $option -eq 4 ]
    then
        testBurrow $baseDirectory
    elif [ $option -eq 5 ]
    then
        testFabric $baseDirectory
    elif [ $option -eq 0 ]
    then
        echo 'Program finished'
    else
        echo 'Option not registered'
    fi
done