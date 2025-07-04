#!/bin/bash

#  Monitor a log file in real-time

tail -f /var/log/syslog

# -f = follow, it shows the new lines as they are added to the file in real time.
# /var/log/syslog = it stores the system logs, it is a log file that is created by the system.