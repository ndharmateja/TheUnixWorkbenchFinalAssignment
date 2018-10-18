#!/bin/bash
files_number="$(ls -la | grep -c ^-rw)"
read -p "How many files are in the current directory? " input

function show_low_or_high {
    echo -n "You guessed too $1. Try again: "
    read input
}

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

echo "Congrats! You have guessed correctly."
