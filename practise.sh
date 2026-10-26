#!/usr/bin/env bash

set -euo pipefail

# Delete the first and last line from a file
sed '1d;$d' ./files/f25.txt