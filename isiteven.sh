#!/usr/bin/env bash
# File: isiteven.sh

:<<'END'
2. Write a function called isiteven that prints 1 if a number is even or 0 a number is not even.
isiteven 42
## 1
END

function isiteven {
  if (( "$1%2"=="0" ))
  then
    echo 1
  else
    echo 0
  fi
}
