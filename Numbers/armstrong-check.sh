#!/usr/bin/env bash

function count_digits
{
    local -i number=$1
    local -i count=0

    while (( number > 0 )); do
        (( count++ ))
        (( number /= 10 ))
    done

    echo $count
}

function is_armstrong_number
{
    local -i number=$1
    local -i sum=0

    local -i digits=$(count_digits $number)

    while (( number > 0 )); do
        local -i digit=$(( number % 10 ))
        (( sum += digit ** digits ))
        (( number /= 10 ))
    done

    if (( sum == $1 )); then
        echo true
    else
        echo false
    fi
}

read -p "Enter a number: " num

if [[ $(is_armstrong_number $num) == true ]]; then
    printf "%d is an Armstrong number \n" "$num"
else
    printf "%d is not an Armstrong number \n" "$num"
fi