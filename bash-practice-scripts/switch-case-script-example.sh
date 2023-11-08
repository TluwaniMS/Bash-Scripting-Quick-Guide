#!/bin/bash

# This is a basic bash-script to give one a quick guide of how to use switch case.

progress="Complete"

case $progress in
    "Started")
        echo "The process has started"
        ;;
    "In Progress")
        echo "The process is in progress"
        ;;
    "Pending")
        echo "The process is pending"
        ;;
    "Complete")
        echo "The process is complete"
        ;;
    *)
        echo "The progress state is undefined"
        ;;
esac