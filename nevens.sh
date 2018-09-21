#!/usr/bin/env bash
# File: nevens.sh

:<<'END'
3. Write a function called nevens which prints the number of even numbers when provided with a sequence of numbers. Use isiteven when writing this function.
nevens 42 6 7 9 33
## 2
END

isiteven() { (( ( $1 % 2 ) == 0 )); }
# isiteven() (( $1%2 == 0 )) # also works
 
nevens() {
	local element result=0
	for element; do                         # HOW IS THIS WORKING WITHOUT for element in $@ ???
		if isiteven "$element"; then
			result=$((result + 1))
		fi
	done
	echo "$result"
}


:<<'END2'
isiteven () {
# if (( $element==0 ))
# if (( "$1%2"=="0" )) 
  if (( ( $1%2 ) == 0 )) 
  then
    echo 1
  else
    echo 0
  fi
}

nevens () {
  local result=0
  declare element
  for element in $@
  do
  # if (( $(isiteven "$element") == 1 ))   
  # if (( $(isiteven) == 1 ))
    if isitseven "$element"
    then
      result=$((result+1))
    fi
  done

  echo $result
}
END2


