#!/bin/bash

# Clean temporary files from /tmp

for i in ./folder/*
do 
    rm -r "$i"
done

# traversing in the folder.