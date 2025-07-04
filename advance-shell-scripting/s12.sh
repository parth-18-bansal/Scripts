#!/bin/bash

# Write a script to rename all .txt files to .bak files in a directory.

for file in *.sh;do
    mv $file ${file%.sh}.bak
done