#!/usr/bin/env bash

sum_odd_int_array() {
	# Callback function...
	sum_odd() (($2 % 2 ? sum += $2 : 0))
	# Main routine...
	sum=0
	ARG_ARRAY=$1[@]
	readarray -c1 -C sum_odd -t < <(printf '%s\n' "${!ARG_ARRAY}")
	echo $sum
}

array=(1 2 3 4 5)
sum_odd_int_array array
