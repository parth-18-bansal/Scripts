#!/bin/bash

# Find and replace the nth occurrence of a word in a file

sed 's/apple/patato/2' ./files/f25.txt

# by default sed replaces the first occurrence of the word in each line
# g = all the occurrences changed
# s/old/new/5 = change 5th occurrence in each line

# so corret answer
echo "********************"

awk '{
       for(i=1;i<=NF;i++)
       {
         if($i=="apple"){
           count++
           if(count==8){
             $i="patato"
           } 
         }
       }
       print
     }' ./files/f25.txt

# in awk we use the single quotes for the whole command
# and double quotes inside it.

