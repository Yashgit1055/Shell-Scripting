#Write a shell script that accepts a filename from the user, 
#checks whether the file exists, and displays an appropriate message. 
#If the file exists, display its size and permissions.




#!/bin/bash

# Accept filename from user
echo "Enter filename:"
read filename

# Check whether file exists
if [ -e "$filename" ]
then
    echo "File exists!"

    # Display file size
    echo "File Size:"
    du -h "$filename"

    # Display file permissions
    echo "File Permissions:"
    ls -l "$filename"

else
    echo "File does not exist!"
fi
