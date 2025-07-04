#/bin/bash

# Find the top 5 largest files in a directory

echo "Top 5 largest files in the current directory:"
ls -Sp | grep -v /$ | head -n 5
