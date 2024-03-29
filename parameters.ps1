#!/bin/bash

# Use a parameter (in this case, the first command line argument)
number=$1

# Define a variable to hold the result
factorial=1

# Calculate the factorial of the number
for (( i=1; i<=number; i++ ))
do
  factorial=$((factorial * i))
done

# Print the result
echo "The factorial of $number is $factorial."
