#!/usr/bin/env bash

read -p "Enter marks percentage: " percentage

if [[ $percentage -lt 0 || $percentage -gt 100 ]]; then
    echo "Invalid value entered."
elif [ $percentage -ge 90 ]; then
    echo "Grade: O"
elif [ $percentage -ge 80 ]; then
    echo "Grade: A"
elif [ $percentage -ge 70 ]; then
    echo "Grade: B"
elif [ $percentage -ge 60 ]; then
    echo "Grade: C"
elif [ $percentage -ge 50 ]; then
    echo "Grade: D"
else
    echo "Grade: F"