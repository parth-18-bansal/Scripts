#!/bin/bash

# Find the longest line in a file

awk '{
    if (length > max){
        max = length
        longest = $0
    }
} END{print longest}' ./files/f30.txt

# length = it is predefined in awk it gives the length of the current line
# max = we don't need to initialize it, awk will do it for us and it give it the value 0.
# longest = it is a variable that we are creating to store the longest line.