#!/usr/bin/env bash

# Check if arguments are provided or not
if [ $# -ne 2 ]; then
    printf "Usage: bash %s min_size max_size\n" "$0"
    printf "min_size and max_size properly (in bytes) \n"
    exit 1
fi

min_size=$1
max_size=$2

# Use find to get a list of files in the current directory within the specified size range
file_list=$(find . -maxdepth 1 -type f -size +"$min_size"c -size -"$max_size"c -exec basename {} \;)

echo "$file_list" | tr ' ' '\n'