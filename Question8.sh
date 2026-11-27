 #!/usr/bin/env bash

# Ensure a service name argument was provided
if [[ -z "$1" ]]; then
    echo "Usage: $0 <service_name>"
    exit 1
fi

SERVICE="$1"

# Verify the service unit actually exists in systemd
# systemctl list-unit-files handles both "nginx" and "nginx.service"
if ! systemctl list-unit-files "${SERVICE}.service" &>/dev/null && ! systemctl list-unit-files "$SERVICE" &>/dev/null; then
    echo "Error: Service '$SERVICE' does not exist."
    exit 2
fi

# Capture the exact status string (e.g., active, inactive, failed)
STATUS=$(systemctl is-active "$SERVICE" 2>/dev/null)

if [[ "$STATUS" == "active" ]]; then
    echo "Service '$SERVICE' is ACTIVE."
    exit 0
else
    echo "Service '$SERVICE' is NOT active (Status: ${STATUS:-unknown})."
    exit 3
fi