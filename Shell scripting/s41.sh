#!/bin/bash

# Convert a space-separated file to a comma-separated file

sed 's/ /,/g' ./files/f40.txt

# awk '{$1=$1}1' OFS=, file.txt
