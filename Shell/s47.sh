#!/bin/bash

# List top 10 largest files in a directory.

ls -lhS | grep -v '^d' | head -n 3 | awk 'NR>=2 {print $9}'

# ls S = sorting, descending order
# ls Sr = sorting, ascending order
# ls h = human readable form size.
