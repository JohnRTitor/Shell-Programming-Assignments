#!/usr/bin/bash

# Math factorial function
function factorial
{
    n=$1
    fact=1
    for (( i=n; i>=1; i-- )); do
        fact=$(($fact * $i))
    done
    echo $fact
}
# Each term in the triange is calculated using nCr
function nCr
{
    n=$1
    r=$2
    n_minus_r=$(( $n - $r ))
    result=$(( $(factorial $n) / ( $(factorial $n_minus_r ) * $(factorial $r) ) ))
    echo $result
}

read -p "How many rows? " rows

for (( i=0; i<=rows; i++ )); do
    for (( space=0; space<=rows - i; space++ )); do
        echo -n " " 
    done
    for (( j=0; j<=i; j++ )); do
        echo -n "$(nCr $i $j) "
    done
    echo ""
done