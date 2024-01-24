#!/usr/bin/env bash

# Check if a filename was provided as an argument
if [ $# -eq 0 ]; then
    echo "Please provide a filename as an argument."
    exit 1
fi

file_name=$1

# Check if the file exists
if [ ! -f $file_name ]; then
    echo "File not found!"
    exit 1
fi

# Use the tac command to print the file in reverse
tac $file_name