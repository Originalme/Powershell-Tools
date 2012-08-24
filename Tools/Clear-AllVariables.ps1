
<#
File: Clear-AllVariables.ps1
.NAME
    Clear-AllVariables
.SYNOPSIS    
    Function call

.DESCRIPTION
    Calling this module will allow you to import multiple module objects from a single directory.

.NOTES
    NAME: Import-Tools
    AUTHOR: Christopher S. Bates
    LAST UPDATE: 08/10/2012
#>
funtion Clear-AllVariables
{
    Clear-Variable -Name [a..z]* -Force -Scope Global
    Clear-Variable -Name [1..9]* -Force -Scope Global
}