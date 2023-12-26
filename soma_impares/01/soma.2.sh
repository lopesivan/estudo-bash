#!/usr/bin/env bash

sum_odd_int_array() {
	local sum=0
	for x in "$@"; do
		((x % 2 != 0)) && ((sum += x))
	done
	echo $sum
}

array=(1 2 3 4 5)
sum_odd_int_array "${array[@]}"
