#!/bin/bash

# Find files modified in the last 7 days

find . -type f -mtime -7

# find = find the files or directories
# . = current directory, here from where we want to start the search for the files
# -type f, -type d = it will find the files or directories
# -name = "file.txt", "*.txt"
# -mtime = it will find the files that are modified in the last n days
# -size = it will find the files that are greater than n bytes, -size +10M = more that 10 MB
# -empty = it will find the empty files
# -delete = it will delete the files that are found, find . -name "*.tmp" -delete
# -exec = it will execute the command on the files that are found, find . -name "*.tmp" -exec rm {} \;
# -iname = it will find the files that are case insensitive

# -7 = within last seven days
# 7 = files change on exactly 7 days ago.