#!/usr/bin/env bash

set -euo pipefail

# Extract only IP addresses from a log file

grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' ./files/f14.txt