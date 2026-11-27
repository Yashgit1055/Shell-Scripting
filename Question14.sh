
#!/bin/bash

# Read environment variables
APP_ENV=${APP_ENV}
APP_PORT=${APP_PORT:-8080}

# Validate APP_ENV
case "$APP_ENV" in
    dev|qa|prod)
        echo "Valid environment: $APP_ENV"
        ;;
    *)
        echo "Error: Invalid or missing APP_ENV."
        echo "Allowed values: dev, qa, prod"
        exit 1
        ;;
esac

# Display configuration
echo "Application Environment: $APP_ENV"
echo "Application Port: $APP_PORT"

echo "Configuration validated successfully!"

