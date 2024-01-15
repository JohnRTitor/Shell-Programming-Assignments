#!/usr/bin/env bash

read -p "Enter the file name: " file_name

read -p "Enter the line numbers: " input
IFS=' ' read -ra lines <<< "$input"

count=1

while IFS= read -ra line; do
    if [[ "${lines[*]}" =~ "${count}" ]]; then
        echo "${line[*]}"
    fi
    count=$((count+1))
done < "$file_name"
