#!/usr/bin/env bash

read -p "Enter file path (without quotes): " file_name

# Use awk to get lines, words, and characters
values=$(wc -l -w -m "$file_name")

# Use array assignment to extract individual values
read -ra values_array <<< "$values"

echo "The number of lines in the file is ${values_array[0]}"
echo "The number of words in the file is ${values_array[1]}"
echo "The number of characters in the file is ${values_array[2]}"
