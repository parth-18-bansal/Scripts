#!/bin/bash

# Find unique words in a file and sort them alphabetically 

awk '{for(i=1;i<=NF;i++) {print $i}}' ./files/f13.txt | sort -u

grep -Eo '\b[a-zA-Z]+\b' ./files/f13.txt | sort -u

# sort works on the lines
# -u = unique, remove the duplicate lines
# -r = reverse i.e. descending order
# -n = numerical sort not lexical
# -k = sort by column e.g. -k 2
# -t = delimiter, default is space. if in csv file, use -t ',' to separate the columns
# -f = ignore case
# -o = output to a file