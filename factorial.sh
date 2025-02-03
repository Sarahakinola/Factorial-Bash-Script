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


# Ensure the input is a positive integer
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Input must be a non-negative integer."
    exit 1
fi

# Calculate and print factorial
result=$(factorial "$number")

# Print the result
echo "The factorial of $number is $result"
