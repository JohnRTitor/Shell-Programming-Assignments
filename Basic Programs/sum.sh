#!/usr/bin/env bash

read -p "Enter num1: " num1
read -p "Enter num2: " num2

result=$(($num1 + $num2))
echo "Sum = $result"
