#!/bin/bash
#
##Arguments

if [ "$1" ]; then
        echo "Hello, $1!"
        exit 1
else
    echo "Usage: ./greet.sh"
fi
