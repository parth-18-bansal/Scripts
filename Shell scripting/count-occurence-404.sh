#!/bin/bash

# This script counts the number of occurrences of the string "404" in the file user.log

# cat access.log | grep -c "404"
cat access.log | grep -c "404"

#LEARNING POINTS

# grep -o = give all the occurrences of the particular string in the file and print those occurence in the output
# grep -c = tell the number of the lines in which the string is present.
# wc -l = count the number of lines in the output