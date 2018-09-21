#! /usr/bin/env bash
# File: sum_or_string.sh

#    3. Write a Bash script that takes two arguments. If both arguments are numbers, print their sum, otherwise just print both arguments.

if [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]]
  then
    expr $1 + $2 | bc -l
else
  echo $1 $2
fi


: <<'END'

Test if arg is an int:

[[ 555 =~ ^[0-9]+$ ]] && echo number || echo not_a_number  # number
[[ xxx =~ ^[0-9]+$ ]] && echo number || echo not_a_number  # not_a_number



END
