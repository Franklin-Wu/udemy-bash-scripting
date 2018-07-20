#! /bin/bash

# Modify the script from the previous exercise. Make the "file_count" function accept a directory
# as an argument. Next have the function display the name of the directory followed by a colon.
# Finally, display the number of files to the screen on the next line. Call the function three times.
# First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.
#
# Example output:
#
# /etc:
#     85

file_count() {
    local COUNT_INCLUDING_DOT_AND_DOUBLE_DOT=$(ls -a1 ${1}| wc -l)
    local COUNT=0
    ((COUNT=COUNT_INCLUDING_DOT_AND_DOUBLE_DOT - 2))
    echo "${1}:"
    echo "    ${COUNT}"
}

file_count "/etc"
file_count "/var"
file_count "/usr/bin"
