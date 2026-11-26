
#!/bin/bash

df -h | awk 'NR>1 {
    if ($5+0 > 80) {
        print "WARNING: " $6 " is " $5 " full!"
    }
}'
