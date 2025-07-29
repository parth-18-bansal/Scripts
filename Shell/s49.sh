#!/bin/bash

# Automatically clean Downloads folder weekly.

for file in /home/parth/downloads/*
do
    name=$(basename "$file")

    # Skip .keep file and Important directory
    if [[ "$name" == ".keep" || "$name" == "Important" ]]; then
        continue
    fi

    if [ -f "$file" ]; then
        rm "$file"
    elif [ -d "$file" ]; then
        rm -r "$file"
    fi
done

# basename to get the only folder or file name not complete path.
# crontab -e = to enter the crontab value
# * * * * * = minute,hour,day of month,month,week