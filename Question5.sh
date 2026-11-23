#Write a script that collects actual system memory utilization 
#and checks whether usage exceeds 80%.
#Display total, used, available memory, and utilization percentage.





#!/bin/bash

# Memory Monitoring Script

# Get memory information in MB
total=$(free -m | awk '/^Mem:/ {print $2}')
used=$(free -m | awk '/^Mem:/ {print $3}')
available=$(free -m | awk '/^Mem:/ {print $7}')

# Calculate memory utilization percentage
usage=$(awk -v u="$used" -v t="$total" \
    'BEGIN {printf "%.2f", (u/t)*100}')

# Display memory information
echo "===================================="
echo "       MEMORY UTILIZATION REPORT"
echo "===================================="

echo "Total Memory     : ${total} MB"
echo "Used Memory      : ${used} MB"
echo "Available Memory : ${available} MB"
echo "Memory Usage     : ${usage}%"

echo "------------------------------------"

# Check memory utilization
if awk -v u="$usage" 'BEGIN {exit !(u > 80)}'
then
    echo "STATUS: WARNING - HIGH MEMORY USAGE!"
else
    echo "STATUS: NORMAL - MEMORY USAGE IS OK"
fi

echo "===================================="
