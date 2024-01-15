#!/bin/bash
# the #!/bin/bash - This is the path to the bash interpreter
# the #!/bin/csh - This is the path to the csh interpreter
# the #!/bin/ksh - This is the path to the ksh interpreter
# the #!/bin/zsh - This is the path to the zsh interpreter 
# * If a script does not contain a shebang the commands are executed using your shell
# * Different shells have slightly varying syntax

# * Contain a services of commands
# * An interpreter executes commands in the script
# * Anything you can tpye at the command line you can put in a script
# * Great for automating tasks

echo "Scripting is fun!" # this will print the text to the screen

# chmod 740 script.sh to make it executable

# Variables
# * Syntax: VARIABLE_NAME="Value"
# * Variables are case sensitive
# * By convention variables are uppercase

MY_SHELL="bash"

# Multiple ways to output
echo $MY_SHELL
echo "$MY_SHELL"
echo ${MY_SHELL}ing the shell
echo "${MY_SHELL}ing the shell"

# Assigning command output to a variable
SERVER_NAME=$(uname -a)

echo This computer name and info is: $SERVER_NAME

# This is an older syntax
SERVER_NAME2=`uname -a`

echo This computer name and info is: $SERVER_NAME2

# Valid variable names
FIRST3LETTERS="ABC"
FIRST_THREE_LETTERS="ABC"
firstThreeLetter="ABC"

echo $FIRST3LETTERS, $FIRST_THREE_LETTERS, $firstThreeLetter

#Using an if statement to perform a test
if [ $MY_SHELL = "bash" ]
then 
    echo "The condition is true"
fi

#Can also be written
if [ "$MY_SHELL" = "bash" ]
then    
    echo The condition is true
fi

#if else
if [ $MY_SHELL = "h" ]
then
    echo The condition is true
else
    echo The condition is not true
fi

#if elif
if [ $MY_SHELL = "me" ]
then 
    echo MY_SHELL is = me
elif [ $firstThreeLetter = "ABC" ]
then 
    echo firstThreeLetter is = ABC
else 
    echo $SERVER_NAME
fi 

#forloops
for COLOR in red green blue
do 
    echo COLOR: $COLOR
done

for NEW in one two three 
do 
    echo $NEW
done

COLORS="red green blue"

for COLORS in $COLORS
do 
    echo COLOR: $COLORS
done

COUNT=test

for COUNT in $COUNT
do 
    echo $COUNT
done

# This will rename any .py file in the directory to the date
SCRIPTS=$(ls *py)
DATE=$(date +%F)

for SCRIPT in $SCRIPTS
do 
    echo Rename ${SCRIPTS} to ${DATE} -${SCRIPTS}
    mv $SCRIPTS $DATE.py
done

#This will append the date to the name of the file
#for SCRIPT in $SCRIPTS
#do 
#    echo Rename $SCRIPTS to $DATE -$SCRIPTS
#    mv $SCRIPTS $DATE-$SCRIPT
#done

#Positional Parameters
#script.sh parameter1 parameter2 parameter3
# $0: "script.sh"
# $1: "parameter1"
# $2: "parameter2"
# $3: "parameter3"
# up to $9
COMMAND=$1
NAME=$2

echo Executing script: $0
echo Executing name: $COMMAND


$COMMAND $SCRIPTS test.py

# This how to take input at the screen
read -p "Enter a name for the file: " NAME

SC=$(ls *py)

$COMMAND $SC $NAME.py
