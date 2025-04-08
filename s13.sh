#!/bin/bash

# Find unique words in a file and sort them alphabetically 

awk '{for(i=1;i<=NF;i++) {print $i}}' ./files/f13.txt | sort -u

grep -Eo '\b[a-zA-Z]+\b' ./files/f13.txt | sort -u