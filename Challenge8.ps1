<#
    Script Name:                  Challenge8 
    Class Name:                   Ops 201
    Author Name:                  Cody Wishart
    Date of latest revision:      2/4/21
    Purpose:                      Output various log info
#>

# System events in the last 24 hours
Get-EventLog -LogName System -After (Get-Date).AddDays(-1) > last_24.txt
# All errors
Get-EventLog -LogName System -EntryType Error > errors.txt


# Print to screen

# Events with ID 16
echo "Events With ID 16:"
Get-EventLog -LogName System -InstanceId 16
echo ""
# Last 20 events
echo "Last 20 Events:"
echo ""
Get-EventLog -LogName System -Newest 20
echo ""
# Sources from last 500 events
echo "Sources from last 500 events:"
$Events = Get-EventLog -LogName System -Newest 500
$Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending
echo ""

pause
