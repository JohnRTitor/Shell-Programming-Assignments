#!/usr/bin/env bash

# Check if a username is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

username=$1

# Check if the user is logged in
if who | grep -wq "$username"; then
    # Get the login time
    login_time=$(who | grep -w "$username" | awk '{print $3, $4}')

    # Calculate the duration in seconds
    duration_seconds=$(( $(date +%s) - $(date -d "$login_time" +%s) ))

    # Calculate hours, minutes, and seconds
    hours=$((duration_seconds / 3600))
    minutes=$(( (duration_seconds % 3600) / 60 ))
    seconds=$((duration_seconds % 60))

    # Print the information
    echo "$username is logged in since $login_time"
    echo "Duration: $hours hour(s), $minutes minute(s), and $seconds second(s)."
else
    echo "$username is not currently logged in"
fi
