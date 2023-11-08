#!/bin/bash

# This is a basic bash-script to give one a quick guide of how to use/access command line arguments.

if [ $# -eq 0 ]
then 
    echo 'There were no arguments that where passed.'
else
    echo 'The arguments that where passed:'
    for argument in $@
    do
        echo $argument
    done
fi