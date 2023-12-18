#!/usr/bin/env bash

# Read space-separated numbers into an array
read -p "Enter space-separated numbers: " -a arr

printf "Original Array: %s\n" "${arr[*]}"

size=${#arr[*]}
for (( i=0; i < size - 1; i++ )); do
    # Find the minimum element in unsorted array
    min_index=$i
    for (( j=i+1; j < size; j++ )); do
        if (( arr[j] < arr[min_index] )); then
            min_index=$j
        fi
    done

    # Swap the found minimum element with the i'th element
    # only if its index is not the same as i
    if (( min_index != i )); then
        temp=${arr[i]}
        arr[i]=${arr[min_index]}
        arr[min_index]=$temp
    fi
done

printf "Sorted Array: %s\n" "${arr[*]}"