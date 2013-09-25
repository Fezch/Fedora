#!/bin/bash

if [ -d $1 ]
	then cd $1
	if [ -f $2 ]
		then 
			echo --- $2 is a file ---
	else 
		echo --- not valid file ---
	fi
else echo -------- $1 is not a valid directory --------
fi
