#!/usr/bin/env bash

read -p "Enter the File name : " fileName

# Use awk to get lines, words, and characters
values=$(wc -l -w -m "$fileName")

# Use array assignment to extract individual values
read -ra valuesArray <<< "$values"

echo "The number of lines in the file is ${valuesArray[0]}"
echo "The number of words in the file is ${valuesArray[1]}"
echo "The number of characters in the file is ${valuesArray[2]}"
