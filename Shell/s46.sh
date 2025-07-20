#!/bin/bash

# Show total, used, and available disk space.
ans=$(
    df -h | awk 'NR>=2 {print "Total: " $2 ", Used: " $3 ", Available: " $4}')


echo -e "${ans}"

# df = disk filesystem
# echo ${ans} = word splitting or globbing happen means multiple space converts into single space etc.
# echo "${ans}" = here things preserve so /n remain next line etc.