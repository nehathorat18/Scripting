#!/bin/bash
# Check if file exists

read -p "Enter your filename: " FILE

if [ -f "/home/ubuntu/$FILE" ]; then
    echo "Your file exists"
else
    echo "Your file doesn't exist"
fi
