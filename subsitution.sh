#!/bin/bash

# Replace all occurrences of "localhost" with "127.0.0.1" in a file

sed -i "s|localhost|127.0.0.1|g" ./files/config.txt | cat config.

# s = substitute
# g = change all the occurrences of the pattern
# i = in-place, means change the file directly other wise file will not change, it only output the change text.
# | rather than /, because / is used in the path