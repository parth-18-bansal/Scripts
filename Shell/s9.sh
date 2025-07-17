#!/bin/bash

# Extract all words with exactly 5 letters

grep -Eo '\b[a-zA-Z]{5}\b' ./files/f9.txt

# \b = word boundary, it is word boundary between a word and a non-word character
# we can also use the -w flag for defining that pattern is a single complete word