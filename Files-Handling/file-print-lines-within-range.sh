#!/usr/bin/env bash

# Check if a filename was provided as an argument
if [ $# -eq 0 ]; then
    printf "Usage: bash %s file_name start_line stop_line" "$0"
    exit 1
fi

file_name=$1
start=$2
stop=$3

count=0

while read line;do
    count=$((count + 1))
    if((count >= start && count <= stop));then
        printf "%s\n" "$line"
    fi
done < "$file_name"