#!/usr/bin/env bash

# Function to reverse a string
function string_reverse
{
    local input_string="$1"
    local reversed_string=""
    local len=${#input_string}
    for (( i=len-1; i>=0; i-- )); do
        reversed_string="${reversed_string}${input_string:i:1}"
    done
    echo "$reversed_string"
}

# Read input from the user
read -p "Enter a string: " original_string

# Reverse the input string
reversed_string=$(string_reverse "$original_string")

printf "Input string: %s \n" "$original_string"
printf "Reversed string: %s \n" "$reversed_string"

# Check if the reversed string is the same as the original string
if [ "$original_string" == "$reversed_string" ]; then
    printf "The input string is a palindrome. \n"
else
    printf "The input string is not a palindrome. \n"
fi
