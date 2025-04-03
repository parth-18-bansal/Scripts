#!/bin/bash

# Find all lines that do not contain "INFO"

cat ./files/logs.log | grep -v -E "INFO|DEBUG"

# -v = find all lines that doesn't have that pattern
# -E = extended regex
# | = use to give more than one pattern

