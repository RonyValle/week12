#!/bin/bash
#Rony Valle Lopez
#Chapter11 Script Introduction To Shell Scripts

#Using the $0 to print the name of the Script
echo Welcome To Rony\'s Chapter 11 Script which is call: $0
#Prints the process ID for this script
echo The Process ID Equals: $$
#Set the Executable bit for this script
chmod +rx week12.sh #might need to change this later!!!

#Using single and double quotes within scrips. to print to the stabdard output.
echo 'Printing $4000 Using Single And Double Quotes'

#Using Double Quotes To Print A The Dollar Sign:
echo -e "Using Double Quotes Prints:\n$4000"

#Using Single Quotes Makes The Difference:

echo -e  'Using single quotes prints:\n$4000'

#USing grep with single Quotes to search for a word in a different directory

echo -e 'Searching for a string within a directory using grep with single quotes:\n'

grep 'r.*t' /etc/passwd
echo
#Returning an error for an exit code
echo "Whats WRONG!??"
ls /ghgkghgin > /dev/null
echo $?

#Working with Conditionals
echo "Answer The Following Question:\n"

echo "What is 2+1?"
read ANSWER
if [ "$ANSWER" = 3 ] || [ "$ANSWER" = three ]; then
	echo "You Are CORRECT!"
else
	echo "Wrong Answer"
fi

#Prints all the Arguments you pass to this script

echo All of Your Arguments: $@
