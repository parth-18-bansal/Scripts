#!/bin/bash

# Print every alternate line from a file 

awk '(NR%2==0){

    print

}' ./files/f25.txt