#!/bin/bash
i=1
cat $1 | tr ! '\n' | sed 's/^ *//g' | while read line
do
if (( i%4==1 ))
then
	echo -n $line" "
elif (( i%4==3 ))
then
	echo $line
fi
i=$(( i+1 ))
done
