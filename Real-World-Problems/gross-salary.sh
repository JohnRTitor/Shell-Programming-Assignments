#!/usr/bin/env bash

read -p "Enter the Basic Salary : " basic

gross=0

# Calculate the gross salary
if [ $basic -gt 15000 ]; then
    gross=$(echo "scale=2; $basic + (0.30 * $basic)" | bc)
else
    gross=$(echo "scale=2; $basic + (0.25 * $basic)" | bc)
fi

echo "The Gross Salary is $gross."