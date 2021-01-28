#!/bin/bash

# Script Name:                  Challenge3 
# Class Name:                   Ops 201
# Author Name:                  Cody Wishart
# Date of latest revision:      1/28/21
# Purpose:                      Output log history

# Array Declaration
dir=("dir1" "dir2" "dir3" "dir4")
labReq=()

# Main
mkdir ${dir[*]}
labReq+=(${dir[*]})

# Wish I had a for loop
touch ${labReq[0]}/sample.txt
touch ${labReq[1]}/sample.txt
touch ${labReq[2]}/sample.txt
touch ${labReq[3]}/sample.txt

# End 
