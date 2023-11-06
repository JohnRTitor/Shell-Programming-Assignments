#!/usr/bin/env bash

function factorial
{
    num=$1
    if [ $num -eq 0 ]; then
        echo 1
        return
    fi
    fact=1
    for ((i=num; i>=1; i--)); do
        fact=$(($fact * $i))
    done
    echo $fact
}

read -p "Enter the number: " num
result=$(factorial $num)

echo "Factorial of $num is $result."