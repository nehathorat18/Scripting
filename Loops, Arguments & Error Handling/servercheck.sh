#!/bin/bash
# Check service status

read -p "Enter the service name: " SERVICE
read -p "Do you want to check the status? (y/n): " choice

if [ "$choice" = "y" ]; then
    if systemctl is-active "$SERVICE" > /dev/null; then
        echo "$SERVICE is active"
    else
        echo "$SERVICE is not active"
    fi
elif [ "$choice" = "n" ]; then
    echo "Skipped"
fi
