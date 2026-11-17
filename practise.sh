#!/usr/bin/env bash

set -euo pipefail

# Find the longest line in a file
max=0
awk '{
        if (length > max){
            max = length
            longest = $0
        }
    }
    END{
        print longest
    }'  ./files/f30.txt