#!/bin/bash

# This script counts the number of files and subdirectories within the current
# working directory.

val1=$(ls | grep -c .)
val2=$(ls -a | grep -c .)

echo "Number of regular files and subdirectories: $val1"
echo "Number of hidden files: $(($val2-$val1))"
echo "Total number of regular files, hidden files, and subdirectories: $val2"

