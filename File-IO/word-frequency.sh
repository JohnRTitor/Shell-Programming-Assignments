#!/usr/bin/env bash

read -p "Enter the file path: " file

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found."
    exit 1
fi

read -p "Enter the word to search: " word

# Use grep to count the occurrences of the word in the file
count=$(grep -o -w "$word" "$file" | wc -l)

echo "The word '$word' appears $count times in the file '$file'."
