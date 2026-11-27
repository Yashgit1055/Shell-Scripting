Write a script that iterates through numbers 1–30, skips numbers divisible by 3 using continue, and stops execution when the number reaches 25 using break.


#!/bin/bash

for num in {1..30}
do
    # Stop the loop when number reaches 25
    if [ "$num" -eq 25 ]; then
        echo "Reached 25. Stopping execution."
        break
    fi

    # Skip numbers divisible by 3
    if [ $((num % 3)) -eq 0 ]; then
        continue
    fi

    echo "$num"
done

