#!/bin/bash

# List all running processes sorted by memory usage 

ps aux --sort=-%mem

# ps = it shows status of the process that belong to that terminal only of current user.
# x = it also shows processes that do not attach to a terminal. that is process started through the gui or background process. but of only current user
# u = it show tha info in user-friendly way
# a = processes by all users. but only terminal based
# ax = all processes of all users