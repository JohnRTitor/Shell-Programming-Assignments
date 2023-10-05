#!/bin/bash

# Get the array
read -p "Enter space-seperated numbers: " arr

# Determine the size
size=0
for number in ${arr[@]}; do
    size=$(($size + 1))
done

swapped=false
for ((i = 0; i < size - 1; i++)); do
    for ((j = 0; j < size - 1 - i; j++)); do
        if [ ${arr[j]} -gt ${arr[j + 1]} ]; then
            # use a temporary third variable to swap arr[j] and arr[j+1]
            temp=${arr[j]}
            arr[j]=${arr[j+1]}
            arr[j+1]=$temp
            # set swapped flag to true
            swapped=true
        fi
    done
    if [ $swapped = true ]; then
        break
    fi
done

echo "Sorted Array: "
for number in ${arr[@]}; do
    echo $number
done