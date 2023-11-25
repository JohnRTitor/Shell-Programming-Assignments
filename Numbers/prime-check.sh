#!/usr/bin/env bash

function is_prime
{
    local num=$1 # capture the first argument passed
    local prime=true
    if (( num == 0 || num == 1 )); then
        echo false
        return
    fi
    for ((i=2; i<$(echo "sqrt($num)" | bc); i++)); do
        if (( num % i == 0 )); then
            prime=false
        fi
    done

    echo $prime
}


read -p "Enter the number: " num

prime=$(is_prime $num)

if [ $prime = true ]; then
    echo "$num is prime."
else
    echo "$num is not prime."
fi