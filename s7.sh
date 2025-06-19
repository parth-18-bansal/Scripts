#!/bin/bash

# Extract the second column from a CSV file

awk -F, '{print $2}' ./files/f7.csv

# -F = field separator
# {} = action that to perform in each line
# NR = line number