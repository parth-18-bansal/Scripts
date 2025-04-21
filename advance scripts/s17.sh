#!/bin/bash

# Concatenate every 2 lines of input with a semi-colon. using awk

awk '{
    if(NR%2 == 1){
        line = $0;
        next
    }
    else if(NR%2 == 0){
        print line ";" $0
    }
   }
END {
    if(NR%2 == 1){
        print line ";"
    }
}' ../files/asf17.txt