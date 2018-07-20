#! /bin/bash

# Write a shell script to check to see if the file "/etc/shadow" exists. If it does exist, display
# "Shadow passwords are enabled." Next, check to see if you can write to the file. If you can,
# display "You have permissions to edit /etc/shadow." If you cannot, display "You do NOT have
# permissions to edit /etc/shadow."

FILENAME="/etc/shadow"
if [ -e ${FILENAME} ]
then
	echo "Shadow passwords are enabled."
	if [ -w ${FILENAME} ]
	then
		echo "You have permissions to edit ${FILENAME}"
	else
		echo "You do NOT have permissions to edit ${FILENAME}"
	fi
fi
