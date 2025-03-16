#!/bin/bash

# show all the disks 
df -h

echo " "

echo "Disks with greater than 15% usage:"

# show the disks with with greater than 15%
df -h | awk '{if ($5 ~ /[0-9]+%/) { usage=$5; sub("%","",usage); if (usage+0 > 15) print $0 }}'
