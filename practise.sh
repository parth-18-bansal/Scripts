#!/usr/bin/env bash

set -euo pipefail

sed 's/shels/{&}p/g' ./files/f1.txt