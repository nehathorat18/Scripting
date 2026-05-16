#!/bin/bash
#
###local variable demo
#

fun_local(){
        local Name="Neha"
        echo "Reading local func:" $Name
}

echo "This is local function"
fun_local
echo "Calling name outside function" $Name

fun_global(){
        Name="Nehaa"
        echo "Reading global func:" $Name
}

echo "This is global function"
fun_global
echo "Calling name outside funcc:" $Name
