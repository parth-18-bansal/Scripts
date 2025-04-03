#!/bin/bash

# Remove leading and trailing spaces from each line in a file 

sed 's/^[[:space:]]*//; s/[[:space:]]*$//' ./files/f2.txt

# ; two run two sed commands in one line
# s/old/new/gI = case insensitive
# s/old/new/2 = replace only the second occurrence
