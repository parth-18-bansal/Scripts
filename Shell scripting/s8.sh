#!/bin/bash

# Print the number of columns in a CSV file

awk -F, '{print NF; exit}' ./files/f7.csv  # action

awk -F, '$(NF-1) > 25' ./files/f7.csv    # condition

awk -F, 'NR > 1 && $(NF-1) > 25' ./files/f7.csv # apply more than two condition.

# NF = number of the field in a line
# $NF = last field
# ; = we can write multiple commands in one line
# exit = stop the program after the first line
# $(NF-1) = second to last field
# '' = okay but "" then first expression is evaluated by the shell not by awk


# {} = used for the custom action
# '' = condition
# if we not specify {} then it will use the default action print $0 = print complete line

# there are three ways of the awk
# 1. condition
# 2. action
# 3. condition action