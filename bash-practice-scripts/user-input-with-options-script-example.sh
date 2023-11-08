#!/bin/bash

# This is a basic bash-script to give one a quick guide of how to read user-input from command line with options.

read -p 'Please provide your name: ' name
read -p 'Please provide your surname: ' surname
read -sp 'Provide a private/secret input: ' secret_input

echo "The name provided: $name"

echo "The surname provided: $surname"

echo "The provided secret: $secret_input"