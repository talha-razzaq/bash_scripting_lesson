#!/bin/bash

echo "Let's run chattr command on dir/file"

chttr() {
	echo "1. Plus chattr command"
	echo "2. Minus chattr command"
	echo "3. Go back"
}

chttr

read -p "Enter your choice: " choice

case $choice in
	1)
		echo "1. Plus chattr command"
		read -p "Enter the file/directory name: " filename
		sudo chattr +i "$filename"
		echo "Command executed successfully"
		;;
	2)
		echo "2. Minus chattr command"
		read -p "Enter the file/directory name: " filename
		sudo chattr -i "$filename"
		echo "Command executed successfully"
		;;
	3)
		echo "Go back ..."
		;;
	*)
		echo "Invalid choice"
		;;
esac

