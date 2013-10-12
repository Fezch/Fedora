#!/bin/bash

if [ -n "$1" ]
	then [ -d $1 ] && cd $1
		if [ -f $2 ]
			then 
				echo ---$2 is a file---;
			head -n3 $2
		else 
			echo --- $2 is not a valid file ---
		fi
else 
	echo --- Please enter a directory when invoking the script  ---
fi 
