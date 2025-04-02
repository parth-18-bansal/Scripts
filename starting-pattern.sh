#!/bin/bash

# Extract lines starting with "WARN" from a log file 

cat ./files/logs.log | grep -i "^warn"

# grep -i = ignore case
# ^ = start of the line or string