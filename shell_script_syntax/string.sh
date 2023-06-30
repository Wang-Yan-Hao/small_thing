#!/bin/sh
# Target: Learn the string and recognize the difference in "" and ''
a="str"
echo "\$abc" # Escape Character
echo '$abc' # '' don't care $
echo "space1    space2" 
echo 'space1    space2'
echo space1    space 1 # multiple space = one space

echo "Hello\nWorld"
echo 'Hello\nWorld' # In traditional sh the shell still think \n not literal, in bash \n will be recognize as string

name="John"
echo "Hello $name"
echo 'Hello $name'

output="$(echo "Hello\nWorld")"
echo "Output with double quotes: $output"

output='$(echo 'Hello\nWorld')'
echo "Output with single quotes: $output"

output=$(echo "Hello\nWorld")
echo "Output without double quotes: $output"

# In traditional sh the shell still think \n not literal, in bash \n will be recognize it as string
output=$(echo 'Hello\nWorld')
echo "Output without single quotes: $output"

# Ececutre a string, treat a string as command (use '' is better, not treate the character literally)
ls_string='ls'
eval '$ls_string -alh' # With a option
