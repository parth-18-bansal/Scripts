#!/bin/bash

# Extract all function names from a shell script file

grep -Eo '^[a-zA-Z_][a-zA-Z0-9_ \t]*\(\)' ./files/f23.txt

# \( = for bracket you have to use the escape character.