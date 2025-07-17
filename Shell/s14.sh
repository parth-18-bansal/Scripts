#!/bin/bash

# Extract only IP addresses from a log file

grep -Eo '\b((25[0-5]|2[0-4][0-9]|1?[0-9]{1,2})\.){3}(25[0-5]|2[0-4][0-9]|1?[0-9]{1,2})\b' ./files/f14.txt

# ? = optional or zero or one occurence

