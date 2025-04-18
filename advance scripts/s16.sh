#!/bin/bash

# Write a script to ping a list of IP addresses stored in a file.

filename="../files/as16.txt"
for ip in $(cat "$filename");do
    if ping -c 1 -W 1 "$ip" > /dev/null 2>&1;then
        echo "$ip is reachable"
    else
        echo "$ip is non reachable"
    fi
done

while IFS= read -r line;do
    echo "$line"
done < "$filename"

# two ways to traverse a file line by line.
# < < for input the command output as a file input
# < for input the file