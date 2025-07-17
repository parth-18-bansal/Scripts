#!/bin/bash

# append or insert the lines to the file

sed -e '2i this is the new line' -e '2a this is the new line' ./files/f3.txt

# 2i = insert the line before line 2
# 2a = append the line after line 2
# -e = execute the more than one sed command in one line