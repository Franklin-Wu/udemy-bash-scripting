#! /bin/bash

# Write a shell script that asks the user for the number of lines they would like to display from the
# /etc/passwd file and display those lines.
#
# Example output:
#
# How many lines of /etc/passwd would you like to see? 3
# root:x:0:0:root:/root:/bin/bash
# daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
# bin:x:2:2:bin:/bin:/usr/sbin/nologin

FILENAME="/etc/passwd"
read -p "How many lines of ${FILENAME} would you like to see? " LINE_NUMBER_MAX
if ! [[ ${LINE_NUMBER_MAX} =~ ^[0-9]+$ ]]
then
	echo error: "${LINE_NUMBER_MAX}" is not a number
	exit 1
fi
LINE_NUMBER=1
while read LINE
do
	if [ ${LINE_NUMBER} -gt ${LINE_NUMBER_MAX} ]
	then
		break
	fi
        echo ${LINE}
        ((LINE_NUMBER++))
done < ${FILENAME}
