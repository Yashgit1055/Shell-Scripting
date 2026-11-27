
#!/bin/bash

# Configurable CPU threshold
CPU_THRESHOLD=80

# Function to check CPU utilization
check_cpu() {
    local cpu_usage=$1

    if (( $(echo "$cpu_usage <= $CPU_THRESHOLD" | bc -l) )); then
        echo "SUCCESS: CPU utilization is ${cpu_usage}% (Threshold: ${CPU_THRESHOLD}%)"
        return 0
    else
        echo "FAILURE: CPU utilization is ${cpu_usage}% (Threshold: ${CPU_THRESHOLD}%)"
        return 1
    fi
}

# Call the function
check_cpu "$1"

# Capture function exit status
status=$?

if [ $status -eq 0 ]; then
    echo "CPU usage is within the acceptable limit."
else
    echo "CPU usage exceeded the threshold!"
fi

