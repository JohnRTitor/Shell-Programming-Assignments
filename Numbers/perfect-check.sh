#!/bin/bash

# perfect numbers are the numbers that 
# are equal to the sum of their proper divisors
# 6 = 1 + 2 + 3 = 1 x 2 x 3

function is_perfect
{
    local num=$1
    local sum=0
    for ((i=1; i<=$(($num / 2)); i++)); do
        # if it is a factor
        if [ $(($num % $i)) -eq 0 ]; then
            sum=$(($sum + $i))
        fi
    done
    if [ $num -eq $sum ]; then
        echo true
    else
        echo false
    fi
}

read -p "Enter the number: " num
if [ $(is_perfect $num) = true ]; then
    echo "$num is a perfect number."
else
    echo "$num is not a perfect number."
fi
