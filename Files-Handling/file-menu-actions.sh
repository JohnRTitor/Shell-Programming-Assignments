#!/usr/bin/env bash

read -p "Enter the file path: " file_path

function append_line
{
    local new_line
    read -p "Enter the line to append: " new_line
    echo "$new_line" >> "$file_path"
    printf "New line appended successfully \n"
}

function edit_line
{
    local -i line_number
    local new_line
    read -p "Enter the line number to edit: " line_number
    printf "Old line: \n"
    sed -n "${line_number}p" "$file_path"
    read -p "Enter the new line: " new_line
    sed -i "${line_number}s/.*/${new_line}/" "$file_path"
    printf "Line %d edited successfully \n" "$line_number"
}

function delete_line
{
    local -i line_number
    read -p "Enter the line number to delete: " line_number
    sed -i "${line_number}d" "$file_path"
}

function search_string
{
    local search_for
    read -p "Enter the string to search: " search_for
    grep -n "$search_for" "$file_path"
}

# if file does not exist, create it
if [ ! -e "$file_path" ]; then
    touch "$file_path"
fi

while true; do
    printf "Main Menu \n"
    printf "Current file: %s \n" "$(basename "$file_path")"
    printf "1. Append a line \n"
    printf "2. Edit a line \n"
    printf "3. Delete a line \n"
    printf "4. Search for a string \n"
    printf "5. Print current content \n"
    printf "6. Exit \n"

    read -p "Enter your choice: " option

    case $option in
        1)
            append_line
            ;;
        2)
            edit_line
            ;;
        3)
            delete_line
            ;;
        4)
            search_string
            ;;
        5)
            cat "$file_path"
            printf "\n"
            ;;
        6)
            printf "Program exited. \n"
            exit 0
            ;;
        *)
            printf "Invalid option. Please try again. \n"
            ;;
    esac
done