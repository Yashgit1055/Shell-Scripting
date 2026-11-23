@Write a script that accepts a username 
#and checks whether the user exists on the Linux server. 
#If the user exists, display their UID and primary group.






#!/bin/bash

# Accept username from user
echo "Enter username:"
read username

# Check whether user exists
if id "$username" &>/dev/null
then
    echo "User exists: $username"

    # Display UID
    uid=$(id -u "$username")

    # Display primary group
    group=$(id -gn "$username")

    echo "User ID (UID)       : $uid"
    echo "Primary Group       : $group"

else
    echo "User does not exist: $username"
fi
