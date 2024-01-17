#!/usr/bin/env bash

# Check if a filename was provided as an argument
if [ $# -eq 0 ]; then
    echo "Please provide a filename as an argument."
    exit 1
fi

file_name=$1
start=$2
stop=$3

count=0

while read line;do
    count=$((count + 1))
    if((count >= start && count <= stop));then
        echo $line
    fi
done < "$file_name"