#!/bin/bash

# Find the file with the largest size in a directory 

ls -Sp | grep -v /$ | head -n 1

# -S = it sorts the files and directory based on the size in descending order
# -p = it appends a / to directories, so we can filter them out
