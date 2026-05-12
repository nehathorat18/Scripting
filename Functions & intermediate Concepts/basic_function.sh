#!/bin/bash
###This script has two funcations greet and add
#
set -euo pipefail

greet()
{
        echo "Hello $1!"
}
greet "Neha"

add()
{
        local SUM=$(( $1 + $2 ))
        echo "Addition of two numbers is $SUM"
}
add 24 24

