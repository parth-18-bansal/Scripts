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
