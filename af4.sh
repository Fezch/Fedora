#!/bin/bash

if [ -d $1 ]
	then cd $1
	if [ -f $2 ]
		then 
			echo ---$2 is a file ---; 
						head -n3 $2
	else 
		echo --- $2 not valid file ---
	fi
else
	echo --- $1 is not a valid directory ---
fi
