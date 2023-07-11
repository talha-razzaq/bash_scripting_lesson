#!/bin/bash

# Script User Administration

#function for display menu
display_menu() {
	echo "User Administration menu: "
	echo "1. Create a new user"
	echo "2. Delete a user"
	echo "3. Mange menu"
	echo "4. Exit"
	
}

#display_user

#function to create user
create_user() {
	read -p "Enter the user name : " username
	read -p "Enter the user paswd  : " password
	sudo useradd -m -p "$(openssl passwd -1 $password)" $username
	echo "User $username successfully created"
}

#create_user

#function to delete user
delete_user() {
	read -p "Enter the username to delete : " username
	sudo userdel -r $username
	echo "User $username successfully deleted"
}

#delete_user	

#function to manage user
manage_user() {
	read -p "Enter the user name to manage : " username
	echo "User management menu for $username"
	echo "1. Change password"
	echo "2. Add user in group"
	echo "3. Remove user in group"
	echo "4. Go back...."
	
	read -p "Enter your choice (1 - 4): " choice
	
	case $choice in
	
	1) 
		read -p "Enter new password : " password
		sudo passwd $username
		echo "User $username password successfully created"
		;;
	2)
		read -p "Enter the group name : " groupname
		sudo usermod -aG $groupname $username
		echo "User $username successfully added in $groupname group"
		;;
	3)
		read -p "Enter the group name : " groupname
		sudo deluser $username $groupname
		echo "User $username removed from group $groupname successfully!"
		;;
	4)
		echo "Go back ........"
		;;
	
	*)
		echo "Invalid input, Please try again"
		;;
	esac
}

#Main script logic
while true; do
	display_menu		
	
	read -p "Enter your choice ( 1 - 4) : " choice
	
	case $choice in
		1)
			create_user
			;;
		2)
			delete_user
			;;
		3)
			manage_user
			;;
		4) 
			echo "Exiting....."
			exit 0
			;;
		*)
			 echo "Invalid choice. Please try again."
			 ;;
			 
		esac
		
		echo
done
			


















