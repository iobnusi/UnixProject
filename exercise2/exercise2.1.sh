#!/bin/bash

declare -A fileDict

for file in `ls`
do
	filehash=`md5sum $file | awk '{print $1}'`
	fileDict[$file]=$filehash
done


for chosenFile in ${!fileDict[@]}
do
	for fileName in ${!fileDict[@]}
	do
		if [ "${fileDict[$fileName]}" = "${fileDict[$chosenFile]}" ] && [ "$fileName" != "$chosenFile" ]
		then
			echo Duplicate found $fileName and $chosenFile
			echo Removing $fileName
			rm $fileName
			unset fileDict[$fileName]

		fi
	done
done

