#!/usr/bin/env bash

# Check if a file path is provided as a command line argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file_name>"
    exit 1
fi

file_name=$1

# Check if the file exists
if [ ! -f "$file_name" ]; then
    echo "Error: File not found."
    exit 1
fi

# Create a temporary file to store non-matching lines
temp_file=$(mktemp)

# Loop through each line in the original file
while IFS= read -r line; do
    # Check if the line contains 'UNIX'
    # -i: ignore case
    # -q: quiet mode, only exit status is returned
    if ! echo "$line" | grep -iq 'UNIX'; then
        # If not, append the line to the temporary file
        echo "$line" >> "$temp_file"
    fi
done < "$file_name"

# Overwrite the original file with the contents of the temporary file
mv "$temp_file" "$file_name"

echo "Lines containing 'UNIX' have been deleted from $file_name"
