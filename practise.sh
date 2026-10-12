#!/usr/bin/env bash

set -euo pipefail

# Extract only email addresses from a text file

sed '2c insert new line' ./files/f3.txt