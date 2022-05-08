#!/bin/bash

case $1 in
	1|3|5|7|8|10|12)
		echo  31
		;;
	4|6|9|11)
		echo 30 
		;;
	2)
		echo 28
		;;
esac
