#!/bin/bash

# Extract domain names from email addresses

grep -E '\b[a-zA-Z0-9_]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}\b' ./files/f39.txt | awk -F @ '{print $2}'