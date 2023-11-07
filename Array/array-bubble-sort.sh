#!/usr/bin/env bash

# Read space-separated numbers into an array
read -p "Enter space-separated numbers: " input
IFS=' ' read -ra arr <<< "$input"

echo "Original array: ${arr[@]}"

# Determine the size
size=${#arr[@]}

swapped=false
for ((i=0; i<size-1; i++)); do
    for ((j=0; j<size-1-i; j++)); do
        if [ ${arr[j]} -gt ${arr[j+1]} ]; then
            # Use a temporary variable to swap arr[j] and arr[j+1]
            temp=${arr[j]}
            arr[j]="${arr[j+1]}"
            arr[j+1]=$temp
            # Set swapped flag to true
            swapped=true
        fi
    done
    if [ $swapped = false ]; then
        break
    fi
done

echo "Sorted array: ${arr[@]}"