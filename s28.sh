#!/bin/bash

# Print every alternate line from a file 

awk '(NR%2==0){

    print

}' ./files/f25.txt

# NR = number of records, so it give the line number
# '(condition) {action --> this execute if condition is true} {END action}'