#!/usr/bin/env bash

set -euo pipefail

# Find and replace the nth occurrence of a word in a file
awk '{
        for(i=1; i<=NF; i++){
            if($i == "apple"){
                count++
                if(count == 6){
                    $i = "found"
                }
            }
            
        }
        print
    }' ./files/f25.txt
