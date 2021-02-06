<#
    Script Name:                  Challenge9 
    Class Name:                   Ops 201
    Author Name:                  Cody Wishart
    Date of latest revision:      2/5/21
    Purpose:                      Do system process things!
#>

# All active processes by CPU time
echo "Processes by CPU time:"
Get-Process| Sort-Object CPU -Descending
echo ""

# All active processes by PID
echo "Processes by PID:"
echo ""
Get-Process | Sort-Object Id -Descending
echo "" 

# Top five processes by working set 
echo "Top 5 processes by working set:"
echo ""
Get-Process | Select -first 5| Sort-Object WS -Descending
echo ""

pause

Start-Process -FilePath "C:\Program Files\Internet Explorer\iexplore.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"

for ($num = 1 ; $num -le 10 ; $num++){
    Start-Process -FilePath "C:\Program Files\Internet Explorer\iexplore.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"
    #Start-Sleep -s 1
}

taskkill /IM iexplore.exe /F
