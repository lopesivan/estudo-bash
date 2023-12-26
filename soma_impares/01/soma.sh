#!/usr/bin/env bash

sum_odd_int_array() {
    local sum=0
    for x in "$@"; do
        if (( x % 2 != 0 )); then
            (( sum+=x ))
        fi
    done
    echo $sum
}

array=(1 2 3 4 5)
echo $(sum_odd_int_array "${array[@]}" )


