
#!/bin/bash

echo "Enter process name:"
read name

pid=$(pgrep "$name")

if [ -n "$pid" ]; then
    echo "Process is running."
    echo "PID: $pid"
else
    echo "PROCESS NOT RUNNING"
fi
