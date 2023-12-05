#!/usr/bin/env bash

read -p "Enter num1: " num1
read -p "Enter num2: " num2

for (( i=1; i<=num1 && i<=num2; i++ )); do
    if (( num1 % i == 0 && num2 % i == 0 )); then
        gcd=$i
    fi
done

lcm=$(( num1 * num2 / gcd ))

printf "For %d and %d: \n" "$num1" "$num2"
printf "LCM = %d, GCD = %d \n" "$lcm" "$gcd"