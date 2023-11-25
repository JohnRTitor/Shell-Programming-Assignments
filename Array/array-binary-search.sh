#!/usr/bin/env bash

# Function to perform binary search
function binary_search
{
    local target=$1
    local to_search=("${@:2}")
    local length=${#to_search[@]}

    local start=0
    local end=$((length - 1))

    while (( start <= end )); do
        middle=$((start + (end - start) / 2))
        middle_element=${to_search[middle]}

        if (( middle_element == target )); then
            echo "Element $target found at position $((middle + 1))"
            return 0
        elif (( middle_element < target )); then
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
