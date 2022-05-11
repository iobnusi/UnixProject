#!/bin/bash

function calculateScore {
	if (( $1 <= 20 && $1 > 18 ))
	then
	score='A'
	elif (( $1 <= 18 && $1 > 16 ))
	then
	score='B'
	elif (( $1 <= 16 && $1 > 14 ))
	then
	score='C'
	elif (( $1 <= 14 && $1 > 12 ))
	then
	score='D'
	elif (( $1 <= 12 && $1 > 10 ))
	then
	score='E'
	elif (( $1 <= 10 ))
	then
	score='F'
	fi
}


i=0
cat $1 | tr ';' '\n' | sed 's/^ *//g' | while read line
do
	score=""
	if (( i%5==0 ))
	then
		echo -n $line" "
	elif (( i%5==1))
	then
		echo -n ${line^}" "
	elif (( i%5==2 || i%5==3 ))
	then
		calculateScore $line
		echo -n $score" "				
	elif (( i%5==4 ))
	then 
 		calculateScore $line
		echo $score
	fi

i=$(( i+1 ))
done
