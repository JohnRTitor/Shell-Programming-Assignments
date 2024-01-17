#!/usr/bin/env bash

read -p "Enter the file path: " file_path

if [ -z "$file_path" ]; then
    printf "No input provided!\n"
    exit 1
fi

if [ ! -f $file_path ]; then
    printf "File not found!\n"
    exit 1
fi

if [ ! -s $file_path ]; then
    printf "File is empty!\n"
fi

printf "File permissions: "

if [ -r $file_path ]; then
    printf "readable "
fi
if [ -w $file_path ]; then
    printf "writable "
fi
if [ -x $file_path ]; then
    printf "executable "
fi

printf "\n"