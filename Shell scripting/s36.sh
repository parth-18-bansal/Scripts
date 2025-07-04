#!/bin/bash

# Extract a specific range of characters from each line in a file

cut -c 1-6 ./files/f36.txt

# cut = it is used to extract sections from each line of files
# -c = it is used to specify the character range to extract
# -f = it is used to specify the field range to extract like cut -d ',' -f 2 file.csv. Gets the second field from a CSV file.