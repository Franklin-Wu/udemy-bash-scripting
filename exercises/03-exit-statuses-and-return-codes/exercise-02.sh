#! /bin/bash

# Write a shell script that accepts a file or directory name as an argument. Have the script report
# if it is a regular file, a directory, or other type of file. If it is a regular file, exit with a 0 exit status.
# If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.

if [ "$#" -ne 1 ]
then
  echo "Usage: $0 file"
  exit 255
fi

FILENAME="$1"
if [ ! -e ${FILENAME} ]
then
    echo "${FILENAME} does not exist."
    exit 255
elif [ -d ${FILENAME} ]
then
    echo "${FILENAME} is a directory."
    exit 1
elif [ -f ${FILENAME} ]
then
    echo "${FILENAME} is a regular file."
    exit 0
else
    echo "${FILENAME} is a special file."
    exit 2
fi
