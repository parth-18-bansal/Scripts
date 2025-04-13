#!/bin/bash

# Write a script to check if a process is running

PROCESS_NAME=$1
if [ -z "$PROCESS_NAME" ]; then
    echo "USAGE: $0 <process_name>"
    exit 1
fi

if pgrep "$PROCESS_NAME" > /dev/null; then
    echo "Process is running"
else
    echo "Process is not running"
fi

# $1 = it is the first argument passed to the script while executing it
# $0 = it is the name of the script
# -z = it is used to check if the variable is empty, if empty it give true
# -n = it is used to check if the variable is not empty, if not empty it give true
# exit 1 = non zero exit code means failure
# exit 0 = zero exit code means success
# pgrep = it give the pid of the running process. here we pass the name and if that process is running it will return the pid.
# > /dev/null = it is used to suppress the output of the command. it is like black hole.
# here in -z there should be inverted commas on the variable.