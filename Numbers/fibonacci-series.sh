#!/usr/bin/env bash

read -p "How many terms you want to print? " terms


if (( terms < 1 )); then
    printf "Invalid terms count. \n"
    exit
fi

printf "The fibonacci series is: "
num1=0
num2=1
# print the first two numbers
printf "%d, %d, " "$num1" "$num2"

for ((i=3; i<=terms; i++)); do
    nextnum=$((num1 + num2))
    # print the series
    printf "%d, " "$nextnum"
    num1=$num2
    num2=$nextnum
done
# add a new line character at the end
printf "\n"