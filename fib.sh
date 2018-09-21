#!/usr/bin/env bash
# File: fib.sh

:<<'END'
5. Write a function called fib which prints the number of fibonacci numbers specified.
fib 4
## 0 1 1 2
fib 10
## 0 1 1 2 3 5 8 13 21 34
END


fib () {
	local a b c=0
	a=0
	b=1
	c=$((a+b))

	count=$1

	if (( $count==0 )); then 
		echo Nothing to print
	fi
	if (( $count >= 1 )); then
		echo $a
	fi
	if (( $count >= 2 )); then
		echo $b
	fi



	while [[ $count -gt 2 ]]
	do
		echo $c

		let a=$b
		let b=$c
		let c=$((a+b))

		let count=$count-1
	done
}
