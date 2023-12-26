#!/usr/bin/env bash

seq 1 5 | paste - - | cut -f2 | sed '/^$/d' | paste -d'+' -s | bc
