#!/usr/bin/env bash
# Read name from console
read -p "What is your name?" name
# Greet the user
printf "Hello, %s!\n" "$name"
