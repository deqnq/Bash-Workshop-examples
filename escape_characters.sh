#!/bin/sh

# for loop example 1:
for TOKEN in 1 2 3 4 5
do
  echo "Looping ... number $TOKEN"
done

# the first loop will print "Looping ... number 1" until number 5

# for loop example 2:
for i in hello 1 * 2 goodbye
do
  echo "Looping ... i is set to $i"
done

# this loop will print values of 'i' which are : hello, 1, all files and directories in current path, 2 and goodbye

# for loop example 3:
for runlevel in 0 1 2 3 4 5 6 S
do
  mkdir rc${runlevel}.d
done

# this loop will create new directories named rc0.d through rcS.d
# though this can be done better in bash without needing a script 
# in this following example :

# instead use this, which again only works in bash (and zsh) !!!

mkdir rc{0,1,2,3,4,5,6,S}.d



## While loops

# example 1:

INPUT_STRING=hello
while [ "$INPUT_STRING" != "exit" ]
do
  echo "Please type something in (type exit to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done
# this while loop will prompt you to enter a string each time until you type "exit"


# example 2:
while :
do
  echo "Please type something in (^C to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done
# the : in this while loop always evaluates to true, so its an infinite loop, 
# until you type Ctrl+C which will give it an interrupt signal 
# and stops the script

# example 3:

while read input_text
do
  case $input_text in
        username)          echo "your username is $USER"    ;;
        hostname)          echo "your hostname is $HOSTNAME"   ;;
        shell)             echo "your current shell is $SHELL" ;;
        quit)              exit		;;
   esac
done < myfile.txt

# this loop will read content from the file "myfile.txt" instead of your keyboard
# useful to read content from elsewhere
