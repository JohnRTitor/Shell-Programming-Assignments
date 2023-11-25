#!/usr/bin/env bash

read -p "Enter marks percentage: " percentage

if (( percentage < 0 || percentage > 100 )); then
    echo "Invalid value entered."
elif (( percentage >= 90 )); then
    echo "Grade: O"
elif (( percentage >= 80 )); then
    echo "Grade: A"
elif (( percentage >= 70 )); then
    echo "Grade: B"
elif (( percentage >= 60 )); then
    echo "Grade: C"
elif (( percentage >= 50 )); then
    echo "Grade: D"
else
    echo "Grade: F"
fi