#!/bin/bash

# Function to calculate factorial using while loop
factorial() {
    local num=$1
    local result=1
    while [ "$num" -gt 1 ]; do
        result=$((result * num))
        num=$((num - 1))
    done
    echo $result
}


# Function to calculate factorial using while loop
factorial() {
    while [ "$1" -gt 1 ]; do
        result=$((result * $1))
        set -- $(($1 - 1))
    done
    echo ${result:-1}
}

# Prompt the user to enter a number
read -p "Enter a number: " number

# Ensure the input is a positive integer
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Input must be a non-negative integer."
    exit 1
fi


# Calculate and print factorial
result=$(factorial "$number")

# Print the result
echo "The factorial of $number is $result"