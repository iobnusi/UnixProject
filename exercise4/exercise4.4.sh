#!/bin/bash

temp=(`seq 50 | shuf`)
arr=(${temp[@]:0:5})

echo ${arr[@]}
