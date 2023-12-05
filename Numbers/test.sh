#!/bin/bash

# Function to check if a string is in kebab case
is_kebab_case() {
    local input="$1"
    # Check if the string matches kebab case pattern
    if [[ "$input" =~ ^[a-z]+(-[a-z]+)*$ ]]; then
        echo "The file name is in kebab case."
    else
        echo "The file name is not in kebab case."
    fi
}

# Take input as path
read -p "Enter the file path: " file_path

# Extract file name from the path
file_name=$(basename "$file_path")

# Print the extracted file name
echo "Extracted file name: $file_name"

file_name=$(basename "$file_path")

# Print the extracted file name
echo "Extracted file name: $file_name"



# Check if the file name is in kebab case
is_kebab_case "$file_name"
