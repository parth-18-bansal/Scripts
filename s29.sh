#!/bin/bash

# Extract URLs from a file

grep -Eo '(http|https)://[a-zA-Z0-9./?=_%:-]+' ./files/f29.txt