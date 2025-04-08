#!/bin/bash

# Find all words in a text file that start with "s" 

grep -Eo '\bs[a-zA-Z]*\b' ./files/f15.txt