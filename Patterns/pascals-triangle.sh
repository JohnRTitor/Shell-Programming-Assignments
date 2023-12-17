#!/usr/bin/env bash

# Math factorial function
function factorial
{
    local n=$1
    local fact=1
    for (( i=n; i>=1; i-- )); do
        fact=$(( fact * i))
    done
    echo $fact
}
# Each term in the triange is calculated using nCr
function nCr
{
    local n=$1
    local r=$2
    local n_minus_r=$(( n - r ))
    local result=$(( $(factorial $n) / ( $(factorial $n_minus_r ) * $(factorial $r) ) ))
    echo $result
}

read -p "How many rows? " rows

for (( i=0; i<=rows; i++ )); do
    for (( space=0; space<=rows - i; space++ )); do
        printf " " 
    done
    for (( j=0; j<=i; j++ )); do
        printf "%d " "$(nCr $i $j)"
    done
    printf "\n"
done