
#!/bin/bash

# Define log file
LOG_FILE="application.log"

# Function to write logs
write_log() {
    local level=$1
    local message=$2
    local timestamp=$(date "+%Y-%m-%d %H:%M:%S")

    echo "[$timestamp] [$level] $message" >> "$LOG_FILE"
}

# Create log file
touch "$LOG_FILE"

# Write five log events
write_log "INFO" "Application started successfully"
write_log "INFO" "Database connection established"
write_log "WARNING" "High memory usage detected"
write_log "ERROR" "Failed to process user request"
write_log "INFO" "Application shutting down"

echo "Five events written successfully to $LOG_FILE"

