#!/bin/bash

# Write a script to read a file line-by-line using while loop.

while IFS= read -r i ; do
    echo "$i"
done < ./s8.sh

# if we run the script without the IFS, then it will remove the leading and trailing spaces form the line
# -r tells not to intrept the \n and other backslashes. if we not write the -r then in output we get n in place of the \n