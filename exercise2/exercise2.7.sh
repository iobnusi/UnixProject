#!/bin/bash

if [ $1 -z ] 
then
	echo "Error: Please type a file name as an argument"
else
	i=1
	for cnt in `awk '{ print length }' $1`
	do
		echo "Line $i) $cnt"
		i=$(( i+1 ))
	done
fi
