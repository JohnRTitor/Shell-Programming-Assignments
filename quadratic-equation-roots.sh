#!/bin/bash

# This program is used to calculate the roots of a quadratic equation
# Given the coefficients a, b, and c, the program will calculate the roots

echo "Calculate roots of ax^2 + bx + c = 0"
# get the inputs from stdin
read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c

# calculate by giving input to bc (basic calculator) command using pipe
# Calculate the discriminant
discriminant=$(echo "scale=2; $b^2 - 4*$a*$c" | bc)

# Real and different roots
if [ $discriminant -gt 0 ]; then
    root1=$(echo "scale=2; (-$b + sqrt($discriminant))/(2*$a)" | bc)
    root2=$(echo "scale=2; (-$b - sqrt($discriminant))/(2*$a)" | bc)

    echo "Roots are real and different"
    echo "Root 1: $root1"
    echo "Root 2: $root2"

# Real and equal roots
elif [ $discriminant -eq 0 ]; then
    root1=$(echo "scale=2; (-$b + sqrt($discriminant))/(2*$a)" | bc)

    echo "Roots are real and equal"
    echo "Root 1 and Root 2: $root1"

# Complex roots
else
    real_part=$(echo "scale=2; -$b/(2*$a)" | bc)
    imaginary_part=$(echo "scale=2; sqrt(-1 * $discriminant)/(2 * $a)" | bc)

    echo "Roots are complex and different"
    echo "Root 1: $real_part + ($imaginary_part)i"
    echo "Root 2: $real_part - ($imaginary_part)i"
fi