#!/bin/bash

if [ -z $1 ] || [ -z $2 ] ; then 
    echo "Params null"
    exit 1
fi;

writefile=$1
writestr=$2

directory=$(dirname "$writefile")

if ! mkdir -p "$directory" ; then
    echo "couldnt make dir!"
    exit 1
fi;

echo $writestr > $writefile

