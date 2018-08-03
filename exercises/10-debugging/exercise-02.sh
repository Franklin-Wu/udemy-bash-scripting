#! /bin/bash -x

# Modify the previous exercise so that script continues, even if an error occurs. This time all three
# ls commands will execute.

OPTIONS="al"
ls -"${OPTIONS}"
echo

OPTIONS="z"
ls -"${OPTIONS}"
echo

OPTIONS="1"
ls -"${OPTIONS}"

