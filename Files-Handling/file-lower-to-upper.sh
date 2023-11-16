#!/usr/bin/env bash

read -p "Enter the filename : " fileName

# Check if the file exists
if [ ! -f "$fileName" ]; then
    echo "Error: File '$fileName' not found."
    exit 1
fi

# Convert content to uppercase and overwrite the original file
tr '[:lower:]' '[:upper:]' < "$fileName" > "$fileName.tmp"
mv "$fileName.tmp" "$fileName"

echo "Content of $fileName has been converted from lowercase to uppercase."
