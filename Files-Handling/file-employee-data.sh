#!/usr/bin/env bash

data_file="employee-data.csv"

function insert_record
{
    local -i id salary
    local name position
    read -p "Enter employee ID: " id
    read -p "Enter employee name: " name
    read -p "Enter employee position: " position
    read -p "Enter employee salary: " salary
    printf "%d,%s,%s,%d" "$id" "$name" "$position" "$salary" | cat >> $data_file
}

# Check if the file exists, if not, create it with header
if [ ! -e $data_file ]; then
    printf "ID,Name,Position,Salary\n" | cat >> $data_file
fi

while true; do
    printf "1. Insert a record \n"
    printf "2. Display all records \n"
    printf "3. Search for a record \n"
    printf "4. Display salary by employee ID \n"
    printf "5. Exit \n"

    read -p "Enter an option: " option

    case $option in
        1)
            insert_record
            ;;
        5)
            exit 0
            ;;
        *)
            printf "Invalid option. Please try again \n"
            ;;
    esac
done