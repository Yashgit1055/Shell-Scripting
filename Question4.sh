#Write a script that accepts CPU utilization as input and displays:
#Below 70%: NORMAL
#70% to 85%: WARNING
#Above 85%: CRITICAL




#!/bin/bash

# Accept CPU utilization from user
echo "Enter CPU utilization (%):"
read cpu

# Validate input
if ! [[ "$cpu" =~ ^[0-9]+([.][0-9]+)?$ ]] || ! awk -v n="$cpu" 'BEGIN {exit !(n >= 0 && n <= 100)}'
then
    echo "Invalid CPU utilization! Enter a value between 0 and 100."
    exit 1
fi

# Check CPU utilization
if awk -v n="$cpu" 'BEGIN {exit !(n < 70)}'
then
    echo "CPU Status: NORMAL"

elif awk -v n="$cpu" 'BEGIN {exit !(n <= 85)}'
then
    echo "CPU Status: WARNING"

else
    echo "CPU Status: CRITICAL"
fi
