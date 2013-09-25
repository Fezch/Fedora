#!/bin/bash

if [ "$(id -u)" != "0" ]; then
	echo "You must be the root user to run this script"
		else echo "Root user confirmed"
	echo -e "\nOptions are as follows:"
	echo -e "\n1. Create a new user"
	echo "2. Delete an existing user"
	echo "3. Quit"
	echo -ne "\nPlease type a number to make your choice: "
		read choiceone

		while (( ($choiceone < 1) || ($choiceone > 3) ))
			do
				echo "Cannot compute: Option was not a valid number"
				echo -n "Please type a number to make your choice: "
				read choiceone
		done

	if (( $choiceone == 1 ))
		then echo "-----Create a new user-----"
		echo -n "Enter a Username: "
			read user
		echo -n "Enter a Password: "
			read pass
		echo "Are you sure you want to create this user?"
		echo -e "\nUsername: $user"
		echo "Password: $pass"
		echo -e "\n1. Yes"
		echo "2. No"
		echo -ne "\nPlease type a number to make your choice: "
			read choicetwo

			while (( ($choicetwo < 1) || ($choicetwo > 2) ))
				do
					echo "Cannot compute: Option was not a valid number"
					echo -n "Please type a number to make your choice: "
					read $choicetwo
			done

			if (( $choicetwo == 1 ))
				then echo "Yes"
			elif (( $choicetwo == 2 ))
				then echo "-----Closing-----"
			fi

	elif (( $choiceone == 2 ))
		then echo "-----Delete an existing user-----"


	elif (( $choiceone == 3 ))
		then echo "-----Closing-----"
	fi
fi


