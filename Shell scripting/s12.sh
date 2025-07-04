#!/bin/bash

# Convert all lowercase letters to uppercase in a file
tr 'a-z' 'A-Z' < ./files/f12.txt
tr -d '\n' < ./files/f12.txt

# tr = translate delete at the character level
# tr 'a-z' 'A-z'
# tr -d 'abc' = delete a,b,c
# tr -s ' ' = squeeze repeated spaces, means convert multiple spaces to a single space
# tr -d '\n' = delete new line
# tr -cd 'a-z' = delete all characters except a-z, here c means complement 