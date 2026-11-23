#Write a script that accepts a directory path, checks whether the directory exists, 
#and creates it if it does not.
# If it already exists, display a message without modifying it.





#!/bin/bash

# Accept directory path from user
echo "Enter directory path:"
read dir

# Check whether directory exists
if [ -d "$dir" ]
then
    echo "Directory already exists: $dir"
    echo "No changes made."
else
    # Create directory
    mkdir -p "$dir"

    if [ $? -eq 0 ]
    then
        echo "Directory created successfully: $dir"
    else
        echo "Failed to create directory!"
    fi
fi
