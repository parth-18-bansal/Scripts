#!/bin/bash

# Count the number of files in a directory

# this will list files and directories both
ls -1 | wc -l

# this list only files
find . -maxdepth 1 -type f | wc -l

# alternative way to list files
for file in *; do
  if [ -f "$file" ]; then
    echo "$file"
  fi
done

# -1 = it will list the files in one column
# find = search tool for files and directories based on the name, size, modified time, type etc.
# max depth = to define travel sub folder or not