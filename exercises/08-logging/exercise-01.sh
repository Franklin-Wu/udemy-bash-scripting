#! /bin/bash

# Write a shell script that displays one random number to the screen and also generates a syslog
# message with that random number. Use the "user" facility and the "info" facility for your
# messages.
#
# Hint: Use $RANDOM

NUMBER=$RANDOM
echo "${NUMBER}"
logger -p user.info -t "$0" "${NUMBER}"

# The following works on MacOS, where looking in /var/log/messages or /var/log/sysinfo does not.
log show --predicate "eventMessage contains '${NUMBER}'" --last 10m --info
