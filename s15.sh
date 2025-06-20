#!/bin/bash

# Find all words in a text file that start with "s" 

grep -Eo '(\bs[a-zA-Z]*\b|\bS[a-zA-Z]*\b)' ./files/f15.txt
grep -Eoi '\bs[a-zA-Z]*\b' ./files/f15.txt

tr -s '[:space:][:punct:]' '\n < ./files/f15.txt | grep -Ei '^s'