#!/bin/bash

readarray -t sorted < <(for a in "$@"; do echo "$a"; done | sort)
echo ${sorted[@]}
