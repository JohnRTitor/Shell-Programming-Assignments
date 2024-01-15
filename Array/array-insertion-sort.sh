#!/usr/bin/env bash

read -p "Enter space-seperated numbers: " -a arr

printf "Original array: %s\n" "${arr[*]}"

size=${#arr[*]}
for (( i=1; i<size; i++ )); do
    key=${arr[i]}
    j=$(( i - 1 ))

    while (( j >= 0 && arr[j] > key )); do
        arr[j + 1]=${arr[j]}
        j=$(( j - 1 ))
    done
    arr[j + 1]=$key
done

printf "Sorted array: %s \n" "${arr[*]}"