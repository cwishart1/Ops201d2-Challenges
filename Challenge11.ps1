<#
    Script Name:                  Challenge11 
    Class Name:                   Ops 201
    Author Name:                  Cody Wishart
    Date of latest revision:      2/5/21
    Purpose:                      Output IPv4 to txt doc
#>

# Functions
Function Output-IPv4 {
    $IamRequiredForSomeReason = ""
    ipconfig /all > network_report.txt
    Get-Content network_report.txt | Select-String -Pattern IPv4 
    echo $IamRequiredForSomeReason
    pause 
    rm network_report.txt
}

# Main
Output-IPv4
