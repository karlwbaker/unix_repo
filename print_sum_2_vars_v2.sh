#! /usr/bin/env bash
# File: print_sum_2_vars_v2.sh


#     Write a Bash program where you assign two numbers to different variables, and then the program prints the sum of those variables.

expr "$1 + $2" | bc -l
