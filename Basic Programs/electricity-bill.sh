#!/bin/bash

# Prompt the user to enter the current and previous meter readings
read -p "Enter the Current Electric Meter Reading : " current
read -p "Enter the Previous Electric Meter Reading : " previous

# Define the fixed service charge
serviceCharge=50

# Calculate the units consumed
units=$((current - previous))

# Define the initial bill amount
bill=0

# Calculate the bill based on the unit consumption
if [ $units -le 100 ]; then
  bill=$(echo "$units * 3.5" | bc)
elif [ $units -le 200 ]; then
  bill=$(echo "(100 * 3.5) + (($units - 100) * 4.5)" | bc)
elif [ $units -le 300 ]; then
  bill=$(echo "(100 * 3.5) + (100 * 4.5) + (($units - 200) * 5.5)" | bc)
else
  bill=$(echo "(100 * 3.5) + (100 * 4.5) + (100 * 5.5) + (($units - 300) * 6)" | bc)
fi

# Add the service charge to the bill
bill=$(echo "$bill + $serviceCharge" | bc)

# Display the units consumed, service charge, and the calculated bill
echo "Units Consumed: $units"
echo "Service Charge: $serviceCharge"
echo "Bill: $bill"
