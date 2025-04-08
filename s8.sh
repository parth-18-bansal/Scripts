#!/bin/bash

# Print the number of columns in a CSV file

awk -F, '{print NF; exit}' ./files/f7.csv

awk -F, '$(NF-1) > 25' ./files/f7.csv

# NF = number of the field in a line
# $NF = last field
# ; = we can write multiple commands in one line
# exit = stop the program after the first line
# $(NF-1) = second to last field
# '' = okay but "" then first expression is evaluated by the shell not by awk