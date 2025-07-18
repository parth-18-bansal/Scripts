#!/bin/bash

# Write a for loop to read lines from a file and print each line in uppercase.

# read -p "please give the filename = " filename

IFS="\n"
for line in $(cat ${filename})
do
    echo ${line} | tr '[:lower:]' '[:upper:]'
done

tr '[:lower:]' '[:upper:]' < ./files/f1.txt

# IFS = internal field seperator, without this line = <each word> not compelete line.
# tr '[:lower:]' '[:upper:]' = tr is used for replacing. but tr also travels the file line by line so there is no need for the for loop.

