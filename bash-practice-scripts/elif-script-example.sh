#!/bin/bash

# This is a basic bash-script to give one a quick guide of how to use else if statement.

num=4

if (($num <= 5)); then
    echo "We are running within the 5th."
elif (($num >= 7 && $num < 8)); then
    echo "We are running within the 7th."
else
    echo "The seventh has been surpassed."
fi
