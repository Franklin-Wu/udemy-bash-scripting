#! /bin/bash

# Modify the previous script so that it accepts the file or directory name as an argument instead of
# prompting the user to enter it.

if [ "$#" -ne 1 ]
then
  echo "Usage: $0 file"
  exit 1
fi

FILENAME="$1"
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
exit 0
