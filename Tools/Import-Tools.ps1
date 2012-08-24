<#
File: Import-Tools.ps1
.NAME
    Import-Tools
.SYNOPSIS    
    Function call used to import multiple ps1 files for use in code.

.DESCRIPTION
    Calling this module will allow you to import multiple module objects from a single directory. (Needs two lines of code to function properly, and you must import this module first."

REMARKS

    ##### Lines to Enter Into Scipt #####

    $Tools = Import-Tools -ToolsDirectory "$ToolsDirectory"
    Import-Module -Passthru $Tools

.NOTES
    NAME: Import-Tools
    AUTHOR: Christopher S. Bates
            Michael Wanke
    LAST UPDATE: 09/24/2012
    VERSION: 1.0.1
#>


<#
##### Lines to Enter Into Scipt #####

$Tools = Import-Tools -ToolsDirectory "$ToolsDirectory"
Import-Module -Passthru $Tools

#>

Function Import-Tools
{


    param 
    (
        [Parameter(Mandatory=$true)]
        [string]$ToolsDirectory
    ) 

    $env:PSModulePath = $env:PSModulePath + ";$ToolsDirectory" #Adds $ToolsDirectory to the Module Environment Variable
    $CurrenDirectory = Get-Location
    
    
    
    if (!(Split-Path $ToolsDirectory -IsAbsolute)) # Make sure the path is absolute (Borrowed from Michael Wanke)
    {
        $ToolsDirectory = Join-Path $pwd $ToolsDirectory
    }
    
    
    Set-Location $ToolsDirectory #Sets tool diretory as location
    

    while ((Test-Path -Path $ToolsDirectory) -eq $False) #Verifies that the tools directory exists.
    {
        $ToolsDirectory = Read-Host "Incorrect tool path entered. Please enter one now or exit"
    }

    
    foreach ($Tool in Get-Childitem $ToolsDirectory -Name -Filter "*.ps1" -Exclude "Import-Tools.ps1") #Create $Tools as an array to pass back to main script
    {
        [array] $Tools = $Tools + "$ToolsDirectory$Tool"
    }
    
    return $Tools #Returns $Tools function to main script and clears local variables.

    Clear-Variable Tools,Tool
   
}