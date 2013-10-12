#!/bin/bash

if [ -n "$1" ] && [ -n "$2" ]
	then if [ -d "$1" ] && cd $1
			then if [ -f "$2" ]
					then echo ---$2 exists ---; head -n3 $2
					
					else echo --- $2 does not exist in $1 ---
					fi
			
			else echo --- $1 is not a valid directory ---
			fi
	
	else echo --- Please enter a directory and then a file when invoking the script ---
fi
