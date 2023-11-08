#!/bin/bash

# This is a basic bash-script to give one a quick guide of how to use arithmetic.

let summed_v1=2+3

echo $summed_v1

summed_v2=$(( 5 + 8))

echo $summed_v2

let "summed_v3=6+2"

echo $summed_v3

echo $(( 2 + 1 ))