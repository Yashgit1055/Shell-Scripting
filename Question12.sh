Write a script that accepts a username and environment name through command-line arguments. Validate that both arguments are provided and display usage instructions otherwise.


#!/bin/bash

# Validate command-line arguments
if [ $# -ne 2 ]; then
    echo "Error: Missing required arguments."
    echo "Usage: $0 <username> <environment>"
    echo "Example: $0 admin development"
    exit 1
fi

# Store arguments in variables
username=$1
environment=$2

# Display the values
echo "Username: $username"
echo "Environment: $environment"

echo "Arguments validated successfully!"

