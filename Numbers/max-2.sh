#!/usr/bin/env bash

read -p "Enter num1: " num1
read -p "Enter num2: " num2

if [ $num1 -gt $num2 ]; then
    echo "$num1 is the greatest."
else
    echo "$num2 is the greatest."
fi
