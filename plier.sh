#!/usr/bin/env bash
# File: plier.sh

:<<'END'
1. Write a function called plier which multiplies together a sequence of numbers.
plier 7 2 3
## 42
END


function plier {
  if [[ $# > 0 ]]        # "$#" is number of args, length of arg array
  then
    local result=1
  else
    local result=0
  fi

  for element in $@    # "$@" is arg array
  do
    let result=result\*$element
  done

  echo $result
}
