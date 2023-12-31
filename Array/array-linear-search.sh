#!/usr/bin/env bash

# Get array input_array
read -p "Enter space-separated numbers: " -a numbers

# Get the integer for which the user wants to search
read -p "Enter the number to search: " search_for

found=false
position=1
for number in ${numbers[*]}; do
    if (( number == search_for )); then
        echo "$search_for found in #$position position"
        found=true
    fi
    position=$((position+1))
done

if [ "$found" = false ]; then
    echo "$search_for not found in the array."
fi