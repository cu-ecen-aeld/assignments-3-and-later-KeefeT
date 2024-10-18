#!/bin/bash

if [ -z $1 ] || [ -z $2 ] ; then 
    echo "Params null"
    exit 1
else 
    filesdir=$1
    searchstr=$2
        
    if [ ! -d $filesdir ] ; then 
        echo "filesdir : $filesdir is not a dir"
        exit 1
    else
        count=$(find "$filesdir" -type f | wc -l)

        instances=$(grep -r "$searchstr" "$filesdir" | wc -l)

        echo "The number of files are $count and the number of matching lines are $instances"
    fi;    
fi;
