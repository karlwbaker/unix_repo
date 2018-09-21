#!/usr/bin/env bash
# File: howodd.sh

:<<'END'
4. Write a function called howodd which prints the percentage of odd numbers in a sequence of numbers. Use nevens when writing this function.
howodd 42 6 7 9 33
## .40
END

isiteven() { (( ( $1 % 2 ) == 0 )); }
# isiteven() (( $1%2 == 0 )) # also works
 
nevens() {
	local element result=0
	for element; do
		echo Element: $element.
		if isiteven "$element"; then
			echo $element is even: true.
			result=$((result + 1))
			echo Number of evens so far: $result.
		else
			echo $element is even: false.
		fi
	done
	echo Number of evens: $result.
	return $result 			
}

howodd () {
	local num_args result_odd perc_odd=0
	num_args=$#
	echo Number of args: $num_args.
	args_array=$@
	echo Array of args: $args_array.
	nevens $args_array
	result_odd=$(($num_args-$?))
	echo Number of odds: $result_odd.
	perc_odd=$(( ( result_odd * 100 ) / num_args ))	# number of odds * 100 / length of arg array
	echo Percentage of odds: $perc_odd%.
}
