#!/bin/sh

if [ -z $1 ] || [ -z $2 ] ; then #null check params 1 and 2
    echo "params null"
    exit 1
fi;

filesdir=$1
searchstr=$2

if [ ! -d $filesdir ] ; then # if "$filesdir" is not a directory
    echo "filesdir : $filesdir is not a dir"
    exit 1
fi;    

count=$(find "$filesdir" -type f | wc -l) #get count of files recursively

instances=$(grep -r "$searchstr" "$filesdir" | wc -l) #grep those files recursively

echo "The number of files are $count and the number of matching lines are $instances"