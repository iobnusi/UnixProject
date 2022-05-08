#!/bin/bash

if [ -z $1 ]
then	
	echo "Error: Please enter a word as an argument"
else
	res=`grep -rw '/usr/share/dict/american-english' -e $1`
	echo `echo "$res" | wc -l` results found
	echo $res
fi
