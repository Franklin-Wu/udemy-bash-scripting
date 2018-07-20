#! /bin/bash

# Modify the previous script to accept an unlimited number of files and directories as arguments.
# Hint: You'll want to use a special variable.

if [ "$#" -eq 0 ]
then
  echo "Usage: $0 file"
  exit 1
fi

FILENAMES="$@"
for FILENAME in ${FILENAMES}
do
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
done
exit 0
