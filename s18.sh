#!/bin/bash

# Find the 5 most frequent words in a file

awk '{ for (i=1;i<=NF;i++) frequency[$i]++} END {for (word in frequency) print word, frequency[word]}' ./files/f18.txt | sort -k 2 -nr | head -n 5

# END {} = Runs once after all lines have been processed in awk. 
# BEGIN {} = Runs once before any input is read in awk.
# { } = This block runs for every line in the input file in awk.
# <name>[<key>]++ = Increment the value of the key in the associative array name by 1. it creates a dictionary of words and their frequencies.

echo " ****** "
for word in $(awk '{for(i=1;i<=NF;i++) print $i}' ./files/f18.txt | sort -u); do
    echo -n "$word: "
    grep -Eo "\b$word\b" ./files/f18.txt | wc -l
done | sort -k 2 -nr | head -n 5

# echo -n = don't add a new line after printing the text