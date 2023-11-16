#!/usr/bin/env bash

read -p "Enter file path (without quotes): " file_name

# Check if the file exists
if [ ! -f "$file_name" ]; then
    echo "Error: File '$file_name' not found."
    exit 1
fi

# Convert content to uppercase and save it to a temporary file
tr '[:lower:]' '[:upper:]' < "$file_name" > "$file_name.tmp"
# Overwrite the original file
mv "$file_name.tmp" "$file_name"

echo "Content of $file_name has been converted from lowercase to uppercase."
