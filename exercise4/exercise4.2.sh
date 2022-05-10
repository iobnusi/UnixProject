#!/bin/bash

arr=(epita is the best school)
arr=('first' ${arr[@]} 'end')
halflen=$(( (${#arr[@]}) / 2 ))
arr=(${arr[@]:0:$halflen} 'middle' ${arr[@]:$halflen})
echo ${arr[@]}

