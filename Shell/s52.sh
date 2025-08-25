#!/bin/bash

# Generate disk usage report for every folder.

du -h .

# -h = human readable
# . = directory
# du = it gives the usage of every folder in the directory


# lsblk = it gives the disk and it's partitions and size of the disks and size of it's partition.
# df -hT = it gives the partions that are mounted, there size, used size, free space. T = type of filesystem, h = humanreadable.

# so du is at the file and folder level at particular path, df gives total size, the usage and free space of the mounted partions and lsblk gives all the disks and their
# partitions size.


# ******************************************************************************************************************************************


# Directory to scan (default = current directory)
DIR=${1:-.}

echo "Disk Usage Report for: $DIR"
echo "Generated on: $(date)"
echo "---------------------------------------"
echo "Size    Directory"
echo "---------------------------------------"

# du command to calculate size of each folder (only top level)
du -h --max-depth=1 "$DIR" 2>/dev/null | sort -h

echo "---------------------------------------"
echo "Total: $(du -sh "$DIR" | awk '{print $1}')"


# 2>/dev/null = to send all the errors in the black hole
# -sh = tell only the complete size in human readable form
# :- = to give the default.
