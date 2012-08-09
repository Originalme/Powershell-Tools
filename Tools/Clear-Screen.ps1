
<#
File: Clear-Screen.ps1

.SYNOPSIS
    Simply clears the screen and then inputs a blank line to the host.
.DESCRIPTION
    Simply clears the screen and then inputs a blank line to the host. Has a few functions that allow different messages.
.NOTES
#>



# Function to Clear Screen+insert blank line
function Clear-Screen
{
    Clear-Host
    Write-Host
}

# Generic error message. (That's right, I'm pulling a Microsoft!)
function Write-GenError
{
    Clear-Host
    Write-Host -ForegroundColor Red "-------------ERROR!------------"
    Write-Host 
}

# Clear-Screen plus add general inforamtion
function Write-General
{
    Clear-Screen
    Write-Host "General Information"
    Write-Host "-------------------"
}

# Clear-Screen plus add agent inforamtion
function Write-AgentConf
{
    Clear-Screen
    Write-Host "Agent Configuration"
    Write-Host "-------------------"
}

Write-GenError