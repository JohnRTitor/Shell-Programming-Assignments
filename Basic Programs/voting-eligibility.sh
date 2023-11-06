#!/usr/bin/env bash

read -p "Enter your Age : " age

if [ $age -ge 18 ]; then
    echo "You are eligible to vote."
else
    echo "You are not eligible to vote. please wait for $((18 - $age)) years."
fi
