#!/bin/bash

#define options as array
declare -a options

#set first empty position with new value
options[${#options[*]}]="List of users in your ubuntu box"
options[${#options[*]}]="Kernel version"
options[${#options[*]}]="Distribution name and version"
options[${#options[*]}]="Identity of the user";
options[${#options[*]}]="Privilage escalation to administrator";
options[${#options[*]}]="Exit";

select opt in "${options[@]}"
do
	case $opt in
		"List of users in your ubuntu box")
			awk -F: '{ print $1}' /etc/passwd
			;;
		"Kernel version")
			uname -r
			;;
		"Distribution name and version")
                        lsb_release -a 2>/dev/null
			;;
		"Identity of the user")
			whoami
			;;
		"Privilage escalation to administrator")
			sudo usermod -aG sudo `whoami`
			;;
		"Exit")
			exit
			;;
	esac
done
