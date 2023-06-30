#!/bin/sh
# Target: how to execute the c file and catch the output
b="apple $(ls) aaa"
echo $b
my_string="Line 1\nLine 2"
# Output the string
echo "$my_string"
c="$(./c_file)"
echo $c
c=$(./c_file)
echo $c # treat \n as space
echo "$c" # treat \n as \n
