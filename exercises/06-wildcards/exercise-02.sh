#! /bin/bash

# Write a script that renames files based on the file extension. The script should prompt the user
# for a file extension. Next, it should ask the user what prefix to prepend to the file name(s). By
# default the prefix should be the current date in YYYYMMDD format. So, if the user simply
# presses enter the date will be used. Otherwise, whatever the user entered will be used as the
# prefix. Next, it should display the original file name and the new name of the file. Finally, it
# should rename the file.
#
# Example output 1:
#
# Please enter a file extension: jpg
# Please enter a file prefix: (Press ENTER for 20150810). vacation
# Renaming mycat.jpg to vacationmycat.jpg.
#
# Example output 2:
#
# Please enter a file extension: jpg
# Please enter a file prefix: (Press ENTER for 20150810).
# Renaming mycat.jpg to 20150810mycat.jpg.
