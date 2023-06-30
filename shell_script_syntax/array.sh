#!/bin/sh
# Target: how to split string use the array-like way.
sentence="this is a story"

# This line sets the positional parameters ($1, $2, $3, and so on) based on the words in the sentence variable.
# The $sentence variable is expanded into its words (separated by spaces),
# and the set command assigns each  word to a positional parameter.
set -- "$sentence" # Assigning positional parameters

# Accessing positional parameters
echo "Positional parameters:"
echo "$1"
echo "$2"
echo "$3"
echo "$4"

# Extracting individual words using 'cut'
word1=$(echo "$sentence" | cut -d ' ' -f 1)
word2=$(echo "$sentence" | cut -d ' ' -f 2)
word3=$(echo "$sentence" | cut -d ' ' -f 3)
word4=$(echo "$sentence" | cut -d ' ' -f 4)

sentence="this is a story"
echo "$sentence" | while read -r field1 field2 field3 field4; do
    echo "$field1"
    echo "$field2"
    echo "$field3"
    echo "$field4"
done
    
# Traditional bournel shell (sh) don't support array, it is support on bash
#string_array=($sentence)
#echo string_array[0]
#echo string_array[1]
#echo string_array[2]
#echo string_array[3]