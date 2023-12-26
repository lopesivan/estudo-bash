#!/usr/bin/env bash

seq 1 5 | paste - - | cut -f1 | paste -d'+' -s | bc
