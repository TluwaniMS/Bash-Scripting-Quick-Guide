#!/bin/bash

# This is a basic bash-script to give one a quick guide of how to get variable lengths.

if [ $# -eq 0 ]
then 
    echo 'There were no arguments that where passed.'
else
    echo 'The arguments that where passed and their length(s):'
    for argument in $@
    do
        echo "$argument length: ${#argument}"
    done
fi