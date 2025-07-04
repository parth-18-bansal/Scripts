#!/bin/bash

# Remove all special characters from a file

tr -cd '[:alnum:]|[:space:]' < ./files/f21.txt

#[:alnum:] means all alphanumeric characters
#[:space:] means all space characters includes tabs, spaces, newlines, etc.