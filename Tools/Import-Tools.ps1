<#
File: Import-Tools.ps1
.NAME
    Import-Tools
.SYNOPSIS    
    Function call

.DESCRIPTION
    Calling this module will allow you to import multiple module objects from a single directory.

.NOTES
    NAME: Import-Tools
    AUTHOR: Christopher S. Bates
            Michael Wanke
    LAST UPDATE: 07/27/201
#>

Function Import-Tools
{
    param 
    (
        [Parameter(Mandatory=$true)]
        [string]$ToolsDirectory
    ) 

    # Make sure the path is absolute (Borrowed from Michael Wanke)
    if (!(Split-Path $ToolsDirectory -IsAbsolute))
    {
        $ToolsDirectory = Join-Path $pwd $ToolsDirectory
    }
    
    
    #TODO add check to make sure the path exists
    while ((Test-Path -Path $ToolsDirectory) -ne $True)
    {
        $ToolsDirectory = Read-Host "Incorrect tool path entered. Please enter one now or exit"
    }

    #Create $Tools variable containing multiple lines for import.
    foreach ($Tool in Get-Childitem $ToolsDirectory -Name -Filter "*.ps1")
    {
        $Tools= $Tools + "`r`nImport-Module $Tool"
    }


    return $Tools

}
