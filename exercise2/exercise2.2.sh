#!/bin/bash

if [ $# -eq 0 ]
then
	read -p "Please enter an expression: " expression
	x=`echo $expression | head -n1 | awk '{print $1;}'`
	operator=`echo $expression | head -n1 | awk '{print $2;}'`
	y=`echo $expression | head -n1 | awk '{print $3;}'`
else
	x=$1
	operator=$2
	y=$3
fi

case $operator in
	'+')
	echo 'scale=5;'"$x + $y" | bc
	;;
	'-')
	echo 'scale=5;'"$x - $y" | bc
	;;
	'/')
	echo 'scale=5;'"$x / $y" | bc
	;;
	'*')
	echo 'scale=5;'"$x * $y" | bc
	;;
	'//')
	echo "$x / $y" | bc
	;;
	'pow')
	echo 'scale=5;'"$x ^ $y" | bc
	;;
	'mod')
	echo "$x % $y" | bc
	;;
	*)
	echo Invalid operator. Please try again.
	echo '-------------------------------------------'
	./exercise2.2.sh
	;;
esac
# A=12;echo 'scale=2;'"$A / 5"|bc -l
