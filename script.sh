#!/bin/bash

# Script Name:                  Challenge1 
# Class Name:                   Ops 201
# Author Name:                  Cody Wishart
# Date of latest revision:      1/26/21
# Purpose:                      Output txt file with network adapter info  


var=$(ip a)

echo $var >output.txt
cat output.txt
