#! /bin/bash

# Write a shell script that prompts the user for a name of a file or directory and reports if it is a
# regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

read -p "Enter the name of a file or directory: " FILENAME
if [ ${#FILENAME} == 0 ]
then
	echo "You did not enter anything."
else
	if [ ! -e ${FILENAME} ]
	then
		echo "${FILENAME} does not exist."
	elif [ -d ${FILENAME} ]
	then
		echo "${FILENAME} is a directory."
	elif [ -f ${FILENAME} ]
	then
		echo "${FILENAME} is a regular file."
	else
		echo "${FILENAME} is a special file."
	fi
	ls -l ${FILENAME}
fi
exit 0
