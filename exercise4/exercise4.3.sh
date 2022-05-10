#!/bin/bash

arr=(epita is the best school)
newlen=$(( ${#arr[@]} - 2 ))
arr=(${arr[@]:1:$newlen})
echo ${arr[@]}

