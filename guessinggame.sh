#!/bin/bash

# Counts the number of files (doesn't count directories) and stores it in variable 'files_number'.
# Uses grep to find number of lines in "ls -la" which start with '-rw'.
files_number="$(ls -la | grep -c ^-rw)"

# Takes user input and stores in variable 'input'
read -p "How many files are in the current directory? " input

# Function to prompt if the guess is too high or too low and also takes in the next guess in variable 'input'.
function show_low_or_high {
    echo -n "You guessed too $1. Try again: "
    read input
}

# While loop runs as long as user input is not equal to the number of files.
while [[ $input -ne $files_number ]]
do
    if [[ $input -gt $files_number ]]
    then
        show_low_or_high high
    elif [[ $input -lt $files_number ]]
    then
        show_low_or_high low
    fi
done

# If while loop is exited, that implies the user guessed correctly.
# Prints Congrats
echo "Congrats! You have guessed correctly."
