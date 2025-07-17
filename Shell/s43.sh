#!/bin/bash

# read the file through using the while.

echo -e "my name is parth \n bansal" | while read line
do
    echo "hello ${line}"
done

index=1
cat /etc/passwd | while read line
do
    echo "${index} ${line}"
    ((index++))
done

index=1
while read line
do
    echo "${index} ${line}"
    ((index++))
    sleep 0.5
done < /etc/passwd

# "while read line" returns true if line is not EOF(End of file). EOF is speacial character.
# -e = so echo consider \n as new line
# sleep = it stop for the x seconds