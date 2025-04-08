#!/bin/bash

# Find lines that start with "#" but are not followed by a space

grep -E '^#[^ ]' ./files/f11.txt

# [^ ] = [^ any pattern] = not included in the pattern