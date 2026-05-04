#!/bin/bash
##Identify if number is positive, negative, or zero

read -p "Enter the number: " NUM

if [ "$NUM" -gt 0 ]; then
echo "$NUM is Positive Number"
elif [ "$NUM" -1t 0 ]; then
echo "$NUM is Negative Number"
else
echo "$NUM is Zero Number"
fi
