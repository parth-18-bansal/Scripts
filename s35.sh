#!/bin/bash

# Get the disk usage of each user 

du -sh /home/*

# du = disk usage
# -s = summary, it will show the total size of directory on which it is applied
# -h = human readable, it will show the size in human readable format
# /home/* = it will show the disk usage of each user in the home directory
# -a = it will show the size of all files and directories
# du = without any flag shows only the size of directories not the files
# du -sh * = it will show the size of all files and directories in the current directory