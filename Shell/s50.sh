#!/bin/bash

# Compress all .log files to .tar.gz

tar -czvf archive.tar.gz ../abc/*.log

# archive = combining more that one files and folders into one file, tar
# compressing = reducing the size of the file or folder using algorithims. gzip, gunzip