#!/bin/bash

# Print lines from 10 to 20 from a file

sed -n "10,20p" ./files/f3.txt

# -n = suppress automatic printing
# "10,20" = range of lines
# p = print

# e.g = -n "2p" = print only line 2
# e.g = -n "/pattern/p" = print only the lines that match the pattern
