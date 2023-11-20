#!/usr/bin/env bash

dataFile="employee-data.txt"

function insertRecord()
{
    read -p "Enter the Employee name : " employeeName

    read -p "Enter the Employee Id : " employeeId

    read -p "Enter the Employee Designation : " employeeDesignation

    read -p "Enter the Employee Salary : " employeeSalary

    echo "Employee ID : $employeeId" >> "$dataFile"
    echo "Employee Name : $employeeName" >> "$dataFile"
    echo "Employee Designation : $employeeDesignation" >> "$dataFile"
    echo "Employee Salary : $employeeSalary" >> "$dataFile"
}

function viewRecords()
{
    echo "Emloyees Biodata : "
    cat "$dataFile"
}

function viewSalary()
{
    read -p "Enter the Employee ID : " targetId

    salary=$(grep -A3 "Employee ID : $targetId" employee-data.txt | awk '/Employee Salary/ {print $NF}')


    if [ -n "$salary" ]; then
        echo "Salary for Employee $target_id: $salary"
    else
        echo "Employee not found or salary not available."
    fi
}

# Main menu
while true; do
    echo "Menu:"
    echo "1. Insert Employee Record"
    echo "2. Display All Records"
    echo "3. Display Salary by Employee ID"
    echo "4. Exit"

    read -p "Enter your choice (1-4): " choice

    case $choice in
        1)
            insertRecord
            ;;
        2)
            viewRecords
            ;;
        3)
            viewSalary
            ;;
        4)
            echo "Exiting the program."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
done