#!/bin/bash

# Check if a given user exists in the system

cat /etc/passwd | grep "^parth:"


read -p "Enter the username: " user

awk -F: -v uname="$user" '{
    if ($1 == uname){
        print
    }
}' /etc/passwd


# we can not use the shell variable inside the awk, so to use then we use the -v 