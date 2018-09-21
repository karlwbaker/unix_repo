#! /usr/bin/env bash
# File: print_num_args.sh

#    Write a Bash program that prints the number of arguments provided to that program multiplied by the first argument provided to the program.

echo "Number of args: $#"
echo "Number of args times first arg:"   # HOW SUPPRESS NEWLINE SO NUMBER APPEARS ON THIS LINE???
expr "$# * $1" | bc -l

