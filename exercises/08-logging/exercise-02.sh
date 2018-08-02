#! /bin/bash

# Modify the previous script so that it uses a logging function. Additionally tag each syslog
# message with "randomly" and include the process ID. Generate 3 random numbers.

function logit() {
	local LOG_LEVEL=$1
	shift
	local MESSAGE=$@
	logger -i -p ${LOG_LEVEL} -t randomly "${MESSAGE}"
}

NUMBER=$RANDOM
echo "${NUMBER}"
logit user.info ${NUMBER}

# The following works on MacOS, where looking in /var/log/messages or /var/log/sysinfo does not.
# MacOS also seems to ignore -i (always including the PID) and -t (never including the tag).
log show --predicate "eventMessage contains '${NUMBER}'" --last 10m --info
