#!/bin/bash

if [ "$(id -u)" != "0" ]; then
	echo "You must be the root user to run this script"
		else echo "You are the root user"
	echo -e "\nOptions are as follows:"
	echo "1. Create a new user"
	echo "2. Delete an existing user"
	echo "3. Quit"
	echo -n "Please type a number to make your choice: "
		read a

	while (( ($a < 1) || ($a > 3) ))
		do
			echo "Cannot compute: Option was not a valid number"
			echo -n "Please type a number to make your choice: "
			read a
		done
	
	if (( $a = 1 ))
		then echo "-----Create a new user-----"

	elif (( $a = 2 ))
		then echo "-----Delete an existing user-----"

	elif (( $a = 3 ))
		then echo "Closing"
	fi
fi


