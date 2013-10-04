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
		then echo -e "\n-----Create a new user-----"
		echo -ne "\nEnter a Username: "
			read user
		echo -e "\nAre you sure you want to create this user?"
		echo -e "\nUsername: $user"
		echo -e "\n1. Yes"
		echo "2. No"
		echo -ne "\nPlease type a number to make your choice: "
			read choicetwo

			while (( ($choicetwo < 1) || ($choicetwo > 2) ))
				do
					echo "Cannot compute: Option was not a valid number"
					echo -n "Please type a number to make your choice: "
					read choicetwo
			done

			if (( $choicetwo == 1 ))
				then useradd $user
				passwd $user
				echo "-----Closing-----"
			elif (( $choicetwo == 2 ))
				then echo "-----Closing-----"
			fi

	elif (( $choiceone == 2 ))
		then echo -e "\n-----Delete an existing user-----"
			echo -e "\nExisting users:"
			cat /etc/passwd | grep -F :/bin/bash | cut -d: -f1
			echo -ne "\nPlease type the name of the user listed above which you wish to delete: "
				read tobedeleted

			echo -e "\nAre you sure you want to delete this user?: $tobedeleted"
			echo -e "\n1. Yes"
			echo "2. No"
			echo -ne "\nPlease type a number to make your choice: "
				read choicethree

				while (( ($choicethree < 1) || ($choicethree > 2) ))
					do
						echo "Cannot compute: Option was not a valid number"
						echo -n "Please type a number to make your choice: "
						read choicethree
				done

			if (( $choicethree == 1 ))
				then echo -e "\nWARNING: THIS ACTION CANNOT BE UNDONE"
				echo -e "\nDo you wish to continue?"
				echo -e "\n1. Yes"
				echo "2. No"
				echo -ne "\nPlease type a number to make your choice: "
					read choicefour

					while (( ($choicefour < 1) || ($choicefour > 2) ))
						do
							echo "Cannot compute: Option was not a valid number"
							echo -n "Please type a number to make your choice: "
							read choicefour
					done

				if (( $choicefour == 1 ))
					then userdel $tobedeleted
					echo -e "\nUser $tobedeleted has been deleted"
					echo "-----Closing-----"
				elif (( $choicefour == 2 ))
					then echo "-----Closing-----"
				fi

			elif (( $choicethree == 2 ))
				then echo "-----Closing-----"
			fi

	elif (( $choiceone == 3 ))
		then echo "-----Closing-----"
	fi
fi


