#! /usr/bin/env bash
# File: define_array.sh

# Write a bash script where you define an array inside of the script, and the first argument for the script indicates the index of the array element that is printed to the console when the script is run.
    
plagues=(blood frogs lice flies sickness boils hail locusts darkness death)

echo ${plagues[$1]}
