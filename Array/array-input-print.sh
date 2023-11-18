#!/usr/bin/env bash

read -p "Enter space-separated numbers: " -a input_array

echo "Numbers entered: "
for num in ${input_array[*]}; do
    echo $num
done