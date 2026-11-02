#!/usr/bin/env bash

set -euo pipefail

containerd config default | sudo tee /etc/containerd/config.toml > /dev/null

# this will not works because redirection execute before sudo.
# sudo containerd config default > /etc/containerd/config.toml

# tee command 
# if we want to write in protected files whose access requires sudo
# tee do both print the output in terminal and also in file that we specified.