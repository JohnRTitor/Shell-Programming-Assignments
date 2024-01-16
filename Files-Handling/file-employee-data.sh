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
    printf "%d,%s,%s,%d\n" "$id" "$name" "$position" "$salary" >> "$data_file"
}

function view_records
{
    if [ -s "$data_file" ]; then
        # column command is used to format the data
        # -t creates a table
        # -s fetches the content based on the seperator ','
        column -t -s ',' "$data_file"
    else
        printf "No records found\n"
    fi
}

function search_record
{
    local -i id
    read -p "Enter employee ID: " id
    # grep -w matches the whole word
    # grep -i ignores the case
    # grep -q suppresses the output
    # we just want to check if the record exists
    if grep -w -i -q "$id" "$data_file"; then
        grep -w -i "$id" "$data_file"
    else
        printf "No records found\n"
    fi
}

function get_salary
{
    local -i id
    read -p "Enter employee ID: " id

    if grep -w -i -q "$id" "$data_file"; then
        grep -w -i "$id" "$data_file" | cut -d ',' -f 4
    else
        printf "No records found\n"
    fi
}

# Check if the file exists, if not, create it with header
if [ ! -e "$data_file" ]; then
    printf "ID,Name,Position,Salary\n" >> "$data_file"
fi

while true; do
    printf "1. Insert a record\n"
    printf "2. Display all records\n"
    printf "3. Search for a record\n"
    printf "4. Display salary by employee ID\n"
    printf "5. Exit\n"

    read -p "Enter an option: " option

    case $option in
        1)
            insert_record
            ;;
        2)
            view_records
            ;;
        3)
            search_record
            ;;
        4)
            get_salary
            ;;
        5)
            exit 0
            ;;
        *)
            printf "Invalid option. Please try again\n"
            ;;
    esac
done
