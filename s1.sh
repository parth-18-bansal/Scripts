#!/bin/bash

# Delete all blank lines from a file

sed '/^$/d' ./files/f1.txt

# /pattern/d = delete the lines that match that pattern
# ^$ = empty line
# d = delete
# [[:space:]]* = zero or more spaces
# !d = delete all lines that do not match the pattern
# 3d = delete line 3
# 3,5d = delete lines 3 to 5