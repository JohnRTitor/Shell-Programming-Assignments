#!/bin/bash

# Get array input_array
read -p "Enter space-separated numbers: " numbers

read -p "Enter the number to search: " search_for

found=false
position=1
for number in ${numbers[@]}; do
    if [ $number -eq $search_for ]; then
        echo "$search_for found in $position'th position"
        found=true
    fi
    position=$(($position+1))
done

if [ "$found" = false ]; then
    echo "$search_for not found in the array."
fi