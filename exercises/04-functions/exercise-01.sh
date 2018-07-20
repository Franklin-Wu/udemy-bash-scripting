#! /bin/bash

# Write a shell script that consists of a function that display the number of files in the present
# working directory. Name this function "file_count" and call it in your script. If you use a variable
# in your function, remember to make it a local variable.
#
# Hint: The wc utility is used to count the number of lines, words, and bytes.

file_count() {
    local COUNT_INCLUDING_DOT_AND_DOUBLE_DOT=$(ls -a1 | wc -l)
    local COUNT=0
    ((COUNT=COUNT_INCLUDING_DOT_AND_DOUBLE_DOT - 2))
    echo "file count = ${COUNT}"
}

file_count
