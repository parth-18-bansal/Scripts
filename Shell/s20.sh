#!/bin/bash

# Replace multiple spaces with a single space in a file 

tr -s ' ' < ./files/f20.txt | sed 's/\t/ /g'

sed 's/ \+/ /g' ./files/f20.txt

# here space \+ means one or more spaces