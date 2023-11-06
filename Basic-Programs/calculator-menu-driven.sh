#!/bin/bash

# get two numbers from stdin
read -p "Enter first number: " num1
read -p "Enter second number: " num2

while true; do
    echo "** Main Menu **"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Modulo"
    echo "6. Reenter numbers"
    echo "7. Exit"

    read -p "Enter the option: " option

    case $option in 
        1)
            echo "Addition of $num1 and $num2 is: $((num1 + num2))"
            ;;
        2) 
            echo "Subtraction of $num1 and $num2 is: $((num1 - num2))"
            ;;
        3)
            echo "Multiplication of $num1 and $num2 is: $((num1 * num2))"
            ;;
        4)
            if [ $num2 -eq 0 ]; then
                echo "Division by zero is not possible"
            else
                echo "Division of $num1 and $num2 is: $((num1 / num2))"
            fi
            ;;
        5)
            if [ $num2 -eq 0 ]; then
                echo "Modulo by zero is not possible"
            else
                echo "Modulo of $num1 and $num2 is: $((num1 % num2))"
            fi
            ;;
        6)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            ;;
        7)
            echo "Program exited."
            exit 0
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done