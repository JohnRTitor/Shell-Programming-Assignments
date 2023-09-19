#!/bin/bash

echo "Enter space-separated numbers: "
read -a input_array

echo "Numbers entered: "
for num in ${input_array[@]}; do
    echo $num
done