#!/usr/bin/env bash

read -p "Enter your age: " age

if (( age < 0 )); then
    echo "Invalid age entered."
elif (( age >= 18 )); then
    echo "You are eligible to vote."
else
    echo "You are not eligible to vote. please wait for $((18 - $age)) years."
fi
