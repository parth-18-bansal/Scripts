#!/bin/bash

# Write a script to create a backup of a directory (compress it as tar.gz).

SOURCE_DIR="$1"
BACKUP_DIR="$2"

if [ -z "$SOURCE_DIR" ];then
    echo "usage $0 <source_dir> <backup_dir>"
    exit 1
fi

if [ -z "$BACKUP_DIR" ];then
    BACKUP_DIR="."
fi

BASENAME=$(basename "$SOURCE_DIR")
BACKUP_FILE="${BACKUP_DIR}/${BASENAME}_backup.tar.gz"

tar -czf "${BACKUP_FILE}" "${SOURCE_DIR}"