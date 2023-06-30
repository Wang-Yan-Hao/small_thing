#!/bin/sh
# Target: Learn basic of shell

# Input and Output
read -p "Please enter your age:" a b # read input, a and b string should have space
# read without -r will mangle backslashes.
echo "$a"  # Double quote to prevent globbing and word splitting.
echo ${b} # Use {} to undertand scope clearly

# Assignment
c="str" # assignment left and right has no space
d="str space"
echo ${c}
echo ${d}
echo $? # Last command return value, 127 mean the command is not exist

# Function
function() {
    echo $0 # sh file name
    echo $1 # First parameter
    echo $2 # If a parameter is not passed when invoking a function or script, the corresponding variable ($2 in this case) will be empty.
    echo "$@" # Double quote array expansions to avoid re-splitting elements
    echo $*
}
function "paramater 1"
function "paramater 1" "parameter 2"

# Math
n=1
m=2
echo $((n+m)) # bash not support, pls use expr or awk command

# Flow
x=20
y=30
if [ $x == $y ]; then
   echo "value x is equal to value y"
fi

if [ $x -gt $y ]; then
   echo "value x is greater than value y"
else
   echo "value x is not greater than value y"
fi

if [ $value1 -gt $value2 ]; then
   echo "value1 is greater than value2"
elif [ $value1 == $value3 ]; then
   echo "value1 is equal to value3"
else
   echo "other result"
fi