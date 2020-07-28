if [ $1 ]
then
    cd caliper
    npm install
    if [ $1 = 'all' ]
    then
        cd ../scripts
        bash test-burrow.sh
        bash test-fabric.sh
    elif [ $1 = 'burrow' ]
    then
        cd ../scripts
        bash test-burrow.sh
    elif [ $1 = 'fabric' ]
    then
        cd ../scripts
        bash test-fabric.sh
    else
        echo 'Option not registered'
    fi
fi