#!/bin/bash

# Extract all links from an HTML file

grep -Eo "(https|http)://[a-zA-Z0-9_.-]+\.[a-z]{2,}" ../files/asf4.html