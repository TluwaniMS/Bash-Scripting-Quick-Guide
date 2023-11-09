#!/bin/bash

# This script grants any user the permission(s) required to run the scripts in the bash-practice-scripts folder.

for file in $(ls ./bash-practice-scripts)
do
    chmod 755 ./bash-practice-scripts/$file
done

echo "File permissions have been updated."