#!/bin/bash

# Calculate the sum of numbers in a column from a file

awk '{sum+=$1} END {print sum}' ./files/f24.txt