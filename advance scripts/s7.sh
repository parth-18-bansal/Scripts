#!/bin/bash

# Schedule a script to run at midnight using cron.

TARGET_SCRIPT=./s5.sh

chmod 764 "$TARGET_SCRIPT"

CRON_JOB="0 0 * * * $TARGET_SCRIPT"

(crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -

# crontab -e = it opens a file where we can add, remove, edit the cron job
# crontab - = it takes the input and edit the crontab according to the input
# crontab -l = it list all the cron jobs of that particular user.
# crontab -r = to remove all the cronjobs
# we can also remove a specific cron job: (crontab -l | grep -v '/path/to/my_script.sh') | crontab -


