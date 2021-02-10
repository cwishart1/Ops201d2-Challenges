#!/bin/bash

# Script Name:                  Challenge12 
# Class Name:                   Ops 201
# Author Name:                  Cody Wishart
# Date of latest revision:      2/10/21
# Purpose:                      Display domain info

# Variable
domainInput="thing"

# Function
domainInfo () {
    whois "$domainInput" >output.txt
    echo "" >> output.txt
    dig "$domainInput" >>output.txt
    echo "" >> output.txt
    host "$domainInput" >> output.txt
    echo "" >> output.txt
    nslookup "$domainInput" >> output.txt
}

# Main
echo "Enter domain:"
read domainInput
domainInfo
