#!/usr/bin/env bash

# Function to perform binary search
binary_search() {
    target=$1
    toSearch=("${@:2}")
    length=${#toSearch[@]}

    start=0
    end=$((length - 1))

    while [[ $start -le $end ]]; do
        middle=$((start + (end - start) / 2))
        middleElement=${toSearch[middle]}

        if [[ $middleElement -eq $target ]]; then
            echo "Element $target found at position $(($middle + 1))"
            return 0
        elif [[ $middleElement -lt $target ]]; then
            start=$((middle + 1))
        else
            end=$((middle - 1))
        fi
    done

    echo "Element $target not found in the array."
    return 1
}

# Read the sorted array from the user
read -p "Enter a sorted array : " input
IFS=' ' read -ra sortedArray <<< "$input"

# Read the target element from the user
read -p "Enter the element to be searched: " target

# Perform binary search
binary_search "$target" "${sortedArray[@]}"
