#!/usr/bin/env bash

# Make this executable by: chmod +x FILENAME
# Add it to .bashrc: source FILENAME
# to make it automatically execute upon user shell login

#get the current hour from the date command
hour=$(date +%H)

if (( hour >= 5 && hour <= 11 )); then
  time="Morning"
elif (( hour >= 12 && hour <= 16 )); then
  time="Afternoon"
elif (( hour >= 17 && hour <= 20 )); then
  time="Evening"
else
  time="Night"
fi

# Display the greeting message
echo "Good $time! Welcome to the system."