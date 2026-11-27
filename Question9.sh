
#!/bin/bash

# List of directories
for dir in development testing staging production
do
    mkdir -p "$dir"

    # Verify directory creation
    if [ -d "$dir" ]; then
        echo "Success: $dir directory created successfully."
    else
        echo "Error: Failed to create $dir directory."
    fi
done

