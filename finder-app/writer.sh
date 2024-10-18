#!/bin/bash

if [ -z $1 ] || [ -z $2 ] ; then #null check params 1 and 2
    echo "Params null"
    exit 1
fi;

writefile=$1
writestr=$2

directory=$(dirname "$writefile") #return dir path from string

if ! mkdir -p "$directory" ; then #run mkdir to create dir if does not exist; then check if that op failed
    echo "couldnt make dir!"
    exit 1
fi;

echo $writestr > $writefile

