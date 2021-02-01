#!/bin/bash

# Script Name:                  Challenge5 
# Class Name:                   Ops 201
# Author Name:                  Cody Wishart
# Date of latest revision:      2/1/21
# Purpose:                      Scan open ports

# Variables
toRun=""
check="y"

# List of functions to run
functionIndex=("scanPorts")

# Functions
scanPorts () {
    # Variables
    targetIp=""
    portRange=""
    check="y"

    while [ $check == "y" ]
    do

    # NC Config
    echo "Enter target computer's IP:"
    read targetIp
    echo "Enter ports to be scanned (Ex. '1-22'):"
    read portRange
    echo ""

    # Running NC
    echo "Scanned Ports:"
    nc -z -v $targetIp $portRange
    echo ""

    # $check
    echo "Scan again? (y / n)"
    read check
    echo ""

    done
}

# Main
while [ $check == "y" ]
do

# UI
echo "Operational functions:" ${functionIndex[*]}
echo "Hello! What function would you like to run?" 
read toRun
echo "Running" $toRun
echo "" 
$toRun

# $check
echo "Would you like to run another program? (y / n)"
read check
echo ""

done

# Done
