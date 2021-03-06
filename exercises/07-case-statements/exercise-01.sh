#! /bin/bash

# Create a startup script for an application called sleepwalkingserver, which is provided below.
# The script should be named sleepwalking and accept "start" and "stop" as arguments. If
# anything other than "start" or "stop" is provided as an argument, display a usage statement:
# "Usage sleepwalking start|stop" and terminate the script with an exit status of 1.
#
# To start sleepwalkingserver, use this command: "/tmp/sleepwalkingserver &"
#
# To stop sleepwalkingserver, use this command: "kill $(cat /tmp/sleepwalkingserver.pid)"
#
# Here is the contents of "sleepwalkingserver". Be sure to put this file in /tmp and run chmod
# 755 /tmp/sleepwalkingserver
#
# #! /bin/bash
# PID_FILE="/tmp/sleepwalkingserver.pid"
# trap "rm $PID_FILE; exit" SIGHUP SIGINT SIGTERM
# echo "$$" > $PID_FILE
# while true
# do
#   :
# done

cat "$0"
