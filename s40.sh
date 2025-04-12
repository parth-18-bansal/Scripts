#!/bin/bash

# Print lines that contain more than 10 words

awk '{if(NF > 10) print $0}' ./files/f40.txt