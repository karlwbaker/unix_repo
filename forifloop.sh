#!/usr/bin/env bash
# File: forifloop.sh

for number in {1..10}
do
  if [[ $number -lt 3 ]] || [[ $number -gt 8 ]] # <3 OR >8
  then
    echo $number
  fi
done
