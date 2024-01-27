#!/usr/bin/env bash

# Function to perform binary search
function binary_search
{
    local -i target=$1
    local to_search=("${@:2}")

    local -i length=${#to_search[@]}
    local -i start=0
    local -i end=$((length - 1))

    local -i middle middle_element

    while (( start <= end )); do
        middle=$((start + (end - start) / 2))
        middle_element=${to_search[middle]}

        if (( middle_element == target )); then
            printf "Element %d found at position %d. \n" "$target" "$((middle + 1))"
            return 0
        elif (( middle_element < target )); then
            start=$((middle + 1))
        else
            end=$((middle - 1))
        fi
    done

    printf "Element %d not found in the array." "$target"
    return 1
}

# Read the sorted array from the user
read -p "Enter a sorted array: " input
IFS=' ' read -ra sorted_array <<< "$input"

# Read the target element from the user
read -p "Enter the element to be searched: " target

# Perform binary search
binary_search "$target" "${sorted_array[@]}"
