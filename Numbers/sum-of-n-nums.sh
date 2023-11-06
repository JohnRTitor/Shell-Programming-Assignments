#!/usr/bin/env bash

function sumN
{
    local n=$1
    local sum=0
    for ((i=0; i<=n; i++)); do
        sum=$(($sum + $i))
    done
    echo $sum
}

read -p "Enter the number: " n

result=$(sumN $n)
echo "The sum of $n natural numbers is: $result"