#!/bin/bash

# Write a script to list only .txt files in a given directory.

#ls -1 ../files | grep -E '[a-zA-Z0-9_-]+.txt'

find "$1" -maxdepth 1 -type f -name "*.txt"

# -maxdepth = don't search in the sub folders only 1 level deep

