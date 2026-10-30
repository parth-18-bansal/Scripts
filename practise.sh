#!/usr/bin/env bash

set -euo pipefail

# Extract URLs from a file
grep -Eo '\b(http|https)://[a-zA-Z0-9./?=_%:-]+\b' ./files/f29.txt