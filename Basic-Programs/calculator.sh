#!/usr/bin/env bash

# get two numbers from stdin
read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo "Sum (num1 + num2) = $((num1 + num2))"
echo "Difference (num1 - num2) = $((num1 - num2))"
echo "Product (num1 * num2) = $((num1 * num2))"
echo "Quotient (num1 / num2) = $((num1 / num2))"
echo "Remainder (num1 % num2) = $((num1 % num2))"