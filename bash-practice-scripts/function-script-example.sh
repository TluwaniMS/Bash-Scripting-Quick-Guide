#!/bin/bash

# This is a basic bash-script to give one a quick guide of how to create a function.

greetTheWorld(){
    echo "The world says hello $1"
}

greetTheWorldFully(){
    echo "The world is giving a full hello $1 $2"
}

function greetTheWorldNamed(){
    echo "The named world says hello $1"
}

function greetTheWorldFullyNamed(){
    echo "The named world is giving a full hello $1 $2"
}

greetTheWorld Thembekile
greetTheWorldFully Thembekile Luvenga

greetTheWorldNamed John
greetTheWorldFullyNamed John Doe
