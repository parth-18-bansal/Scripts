#!/bin/bash

# Find broken symbolic links in a directory.

# Directory to scan (use current directory by default)
DIR="${1:-.}"

echo "Scanning for broken symbolic links in: $DIR"

# Find and list broken symlinks
find "$DIR" -xtype l

# {1:-.} = it means either use the argument provides or use the default value "." means current directory
# :- = means default parameter
# -type l = means symbolic links
# -xtype l = finds the broken symbolic links

