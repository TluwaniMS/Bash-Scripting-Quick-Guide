#!/bin/bash

for file in $(ls ./bash-practice-scripts)
do
    chmod 755 ./bash-practice-scripts/$file
done

echo "File permissions have been updated."