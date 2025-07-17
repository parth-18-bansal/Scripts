#!/bin/bash

# Print numbers from 1 to 10 using a while loop

number=1
while [[ ${number} -le 10 ]]
do
    echo "${number}"
    ((number++))
done




# [[]] = for conditional expression like comapare strings, check whether file exists. For true false
# (()) = arthimetic evaluation.
# $(()) = to capture the result and give to someone
# bash -x = to run the script in the debug mode
