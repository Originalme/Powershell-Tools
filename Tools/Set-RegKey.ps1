
<#
File: Set-RegKey.ps1

.SYNOPSIS
    Allows user to set a registry key using givin parameters.
.DESCRIPTION
    Pass the Path, Key Name, Property Type, and Value to set a registry key.
.NOTES
#>

function Set-RegKey
{
<#
    All Paramerters are REQUIRED otherwise you could mess up your registry. 
#>
    Param 
    (
        [Parameter(Mandatory=$true)]
        [string]$RegPath,
        [string]$RegKeyName,
        [string]$RegKeyType,
        [string]$RegValue
    )

    #Simple string to set the registry key
    New-ItemProperty -Path $RegPath -Name $RegKeyName -PropertyType $RegKeyType -Value $RegValue
}