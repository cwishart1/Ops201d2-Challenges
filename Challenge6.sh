#!/bin/bash

# Script Name:                  Challenge6 
# Class Name:                   Ops 201
# Author Name:                  Cody Wishart
# Date of latest revision:      2/2/21
# Purpose:                      display system info

# Main
lshw | grep -m 1 -B 1 "description"
echo ""
lshw | grep -A 11 "*-cpu"
echo ""
lshw | grep -A 4 "*-memory"
echo ""
lshw | grep -A 11 "*-display"
echo ""
lshw | grep -A 15 -m 1 "*-network"
echo ""

# End
