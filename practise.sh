#!/usr/bin/env bash

set -euo pipefail

# Find and count duplicate lines in a file

sort ./files/f22.txt | uniq -c | sort -nr | awk '$1>1 {print $0}'