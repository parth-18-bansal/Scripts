#!/usr/bin/env bash

set -euo pipefail

# Print the number of columns in a CSV file

awk -F, 'NR > 1 && $(NF-1) > 25' ./files/f7.csv