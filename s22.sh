#!/bin/bash

# Find and count duplicate lines in a file

sort ./files/f22.txt | uniq -c | sort -nr | awk '{if ($1 >1) print $0}'

# uniq = removes adajacent duplicate lines
# -c = count how many times each line occurs, and prefix the line with the count
# -d = only print duplicate lines
# -u = only print unique lines
# -i = ignore case
# -w = compare only the first N characters
# -f n = Skip first n fields when comparing
# -s n = Skip first n characters when comparing

echo "*****************"

sort ./files/f22.txt | uniq -dc