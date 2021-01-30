 #!/bin/bash

# Script Name:                  Challenge4 
# Class Name:                   Ops 201
# Author Name:                  Cody Wishart
# Date of latest revision:      1/29/21
# Purpose:                      Display PIDs, ask for one and kill corrosponding process

# Variable Declaration
toKill=1

# While
while [ $toKill -ne -1 ] 
do
ps aux
echo "Type in PID to terminate or -1 to stop"
read toKill                                      
kill $toKill
done

# Done
echo ""
