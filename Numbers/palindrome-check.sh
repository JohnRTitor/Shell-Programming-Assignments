#!/bin/bash

# read a number
read -p "Enter the number: " num

temp=$num
reverse=0
while [ $temp -gt 0 ]; do
    # calculate the remainder, to get the last digit
    rem=$(($temp % 10))
    # add to reverse
    reverse=$(($reverse * 10 + $rem))
    # trim the last digit
    temp=$(($temp/10))
done

echo "The reverse of $num is $reverse"
if [ $num -eq $reverse ]; then
    echo "$num is palindrome."
else
    echo "$num is not palindrome."
fi