#!/bin/bash

# Find the 5 most frequent words in a file

awk '{
        for (i=1;i<=NF;i++){
            frequency[$i]++
        }
    }' ./files/f18.txt

for word in $frequency
do
    echo $word, $frequency[$word]
done