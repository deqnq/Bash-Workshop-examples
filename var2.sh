#!/bin/sh
#echo What is your name?
#read MY_NAME
#echo "Hello $MY_NAME - hope you're well."

#Another interesting variable is IFS
#This is the Internal Field Separator.
#The default value is SPACE TAB NEWLINE
#but if you are changing it, it's easier to take a copy, as shown:

old_IFS="$IFS"
IFS=:
echo "Please input some data separated by colons ..."
read x y z
IFS=$old_IFS
echo "x is $x y is $y z is $z"

