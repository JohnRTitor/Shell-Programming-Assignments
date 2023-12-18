#!/usr/bin/env bash

read -p "Enter the number of rows : " rows

for((i=1;i<=rows;i++));do
    for((j=1;j<i;j++));do
        printf " "
    done
    for((k=i;k<=rows;k++));do
        printf "*"
    done
    printf "\n"
done