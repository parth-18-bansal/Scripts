#!/bin/bash

# Archive files older than 30 days.

find . -type f -mtime +30 -print | tar -cvzf old_files_$(date +%F).tar.gz -T -

# -T - = it tells the tar take the files names from the find output
# -z = it compress the archive 