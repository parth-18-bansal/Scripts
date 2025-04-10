#!/bin/bash

# Print every alternate line from a file 

awk 'NR % 2 == 1 {print $0}' ./files/f25.txt

# NR = number of records, so it give the line number