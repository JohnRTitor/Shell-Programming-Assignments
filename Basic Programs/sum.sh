#!/bin/bash

read -p "Enter num1: " NUM1
read -p "Enter num2: " NUM2

RESULT=$(($NUM1 + $NUM2))
echo "Sum = $RESULT"
