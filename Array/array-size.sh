#!/usr/bin/env bash

# Get the array
read -p "Enter space-seperated numbers: " numbers

# Determine the size
size=0
for _ in ${numbers[*]}; do
    size=$((size + 1))
done
# Equivalent to size=${#numbers[@]}

echo "The size of the array is $size"
