
#!/bin/bash

# Create an array of five server names
servers=("web-server" "app-server" "db-server" "test-server" "backup-server")

# Iterate through the array
for index in "${!servers[@]}"
do
    echo "Index: $index - Server: ${servers[$index]}"
done

