#!/bin/bash

if [ -n "$1" ] && [ -n "$2" ]
then 
	if [ -f $1 ]
		then
			case $2 in
			--print) cat $1
			;;
			--list) less $1
			;;
			--truncate) > $1
			;;
			*) echo --- $2 is not a valid option, please enter --print, --list or --truncate ---
			esac
		else echo --- $1 does not exist in the directory of this script ---
		fi
else echo --- Please enter a file and an option when invoking the script, --print, --list or --truncate ---
fi
