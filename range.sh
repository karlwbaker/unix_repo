#!/usr/bin/env bash
# File: range.sh

# Write a program called range that takes one number as an argument and prints all of the numbers between that number and 0.

i=0
input="$1"

if [[ "$input" -lt "0" ]]; then
  for ((i=input;i<=0;i++)); do
    echo $i
  done
else
  for ((i=0;i<=input;i++)) # for i in {1..$input} # (( COUNTER=0; COUNTER<=$1 ))
  do
    echo "$i"
  done
fi

:<<'COMMENT'

The problem with {1..$input} :

The ***brace expansion is evaluated before the variables are expanded***. You need a c-style (csh style) for loop instead:

for ((i=1;i<=howmany;i++))
do
   echo "Welcome"
done
COMMENT

# Another suggestion:
# BASH PARAMETER EXPANSION: to iterate over the range of indices of an array, the bash way would be: 
# myarray=('a' 'b' 'c'); for i in ${!myarray[@]}; do echo $i; done

:<<'COMMENT'
WORKS:
for (( COUNTER=0; COUNTER<=10; COUNTER+=2 )); do
    echo $COUNTER
done
COMMENT


