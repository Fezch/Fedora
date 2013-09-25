#!/bin/bash

# FORMAT DIS SHIZ NIGGA
# this script is desinged to all a user to enter a directory and then veryify that it exists.
# If the user enters a valid directory that will become their current directory.
# Once the user has verified that the directory exists they are then prompted to enter a file to verify that the file exits.

echo -------- Directory check --------
echo Please enter a directory:
read DIR
if [ -d $DIR ]
then cd $DIR && echo "-------- $DIR exists! --------" 
else echo "-------- Error $DIR does not exist. --------" && exit
fi
echo Please enter a filename from $DIR:
read FILE
if [ -f $FILE ]
then echo -------- Preview of $FILE --------; head -n3 $FILE # The -n3 is to show only the first 3 lines of the $FILE.
else echo "-------- Error $FILE does not exist in $DIR. --------" && exit
fi
