#!/bin/bash

read number

if (( $number % 2 == 0 )); then
    echo "number is even"
else
    echo "number is odd"
fi

# see all the brackets in the shell scripts
