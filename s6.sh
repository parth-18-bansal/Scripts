#!/bin/bash

# Extract only email addresses from a text file

grep -Eo "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" ./files/f6.txt

# + = one or more
# * = zero or more
# ? = zero or one
# {n} = exactly n times
# {n,} = at least n times
# {n,m} = at least n times and at most m times
# [a-zA-Z0-9._%+-] = any letter, number, dot, underscore, percent, plus or minus
# \. = escape the dot