#!/usr/bin/env bash

read -p "How many terms you want to print? " terms


if (( terms < 1 )); then
    echo "Invalid terms count."
    exit
fi

echo "The fibonacci series is: "
num1=0
num2=1
# print without a newline at the end
echo -n "$num1, $num2, "

for ((i=3; i<=terms; i++)); do
    nextnum=$((num1 + num2))
    # print the series
    echo -n "$nextnum, "
    num1=$num2
    num2=$nextnum
done
# add a new line character at the end
echo ""