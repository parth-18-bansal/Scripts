#!/bin/bash

# how to write a bash script for this: Find duplicate files in a directory.

dir=${1:-.}

declare -A file_hashes

echo "Scanning the $dir"
echo

while IFS= read -r -d '' file;do
    hash=$(sha256sum "$file" | awk '{print $1}')
    if [[ -n "${file_hashes[$hash]}" ]] then
        echo "duplicates files"
        echo "$file"
        echo
    else
        file_hashes[$hash]="$file"
    fi
done < <(find $dir -type f -print0)
