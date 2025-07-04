#!/bin/bash

# Monitor CPU usage and alert if it exceeds a limit

THRESHOLD=80

INTERVAL=60

get_cpu_usage(){
    usage=$(mpstat 1 1 | awk '/Average:/ {print 100 - $NF}')
    echo ${usage%.*}
}

while true; do
    cpu_usage=$(get_cpu_usage)
    
    if [ "$cpu_usage" -gt "$THRESHOLD" ]; then
        echo "CPU usage is high: ${cpu_usage}%"

    else
        echo "CPU usage is OK"
    fi

    sleep $INTERVAL
done




# mpstat = multiprocessor statistics, it gives the time of cpu and it cores spent where.
# %.* = this is parameter expansion, here it % = this tell to remove the shortest match from the end to be removed from the string.
# %%.* = %% this tell to remove the largest match from the end to be removed.
# var#pattern = this tell to remove the shortes match from the start
# var##pattern = this tell to remove the largest match from the start.

# in place of the parameter expansion, we can also use the grep but parameter expansion works for the variables but alone grep do not.
