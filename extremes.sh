#!/usr/bin/env bash
# File: extremes.sh

# Write a program called extremes that prints the maximum and minimum values of a sequence of numbers.

# For a sequence of numbers passed in as arguments
printf "Max: %d\n" $@ | sort -rn | head -1 # max
printf "Min: %d\n" $@ | sort -n | head -1 # min


:<<'COMMENT'
THIS WORKS:
# For a sequence of numbers defined in a variable in the script
numbers=(1 4 3 5 7 1 10 21 8)
printf "%d\n" "${numbers[@]}" | sort -rn | head -1 # max
printf "%d\n" "${numbers[@]}" | sort -n | head -1 # min
COMMENT


:<<'COMMENT'
If you know you are dealing with two integers a and b, then this simple shell arithmetic expansion using the ternary operator is sufficient to give the numerical max of them:

$(( a > b ? a : b ))

E.g.

$ a=10
$ b=20
$ max=$(( a > b ? a : b ))
$ echo $max
20
$ a=30
$ max=$(( a > b ? a : b ))
$ echo $max
30
$ 
COMMENT

:<<'COMMENT'
THIS WORKS FOR 2 NUMBERS (EXPLANATION IN COMMENT ABOVE):
[ -z "$1" ] && { echo "Needs a limit as first argument." >&2; exit 1; }
read number
echo Min: $(( $number  < $1 ? $number : $1 ))
echo Max: $(( $number  > $1 ? $number : $1 ))
COMMENT


:<<'COMMENT'
#include <math.h>
double fmax(double x, double y); float fmaxf(float x, float y); long double fmaxl(long double x, long double y);
COMMENT


