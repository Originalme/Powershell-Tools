<#
File: Set-GlobalVariables.ps1

.SYNOPSIS
    Creates information for all scripts.
.DESCRIPTION
    Creates comment header with script info.
.NOTES
    Credit goes to ScriptingGuy1 from TechNet
#>
Function Add-Help
{
 $helpText = @"
<#
   .Synopsis
    This does that 
   .Example
    Example-
    Example- accomplishes 
   .Parameter 
    The parameter
   .Notes
    NAME: Example-
    AUTHOR: Christopher S. Bates
    LASTEDIT: $(Get-Date)
    KEYWORDS:
   .Link
    http://www.originalme.net
#Requires -Version 3.0
#>
"@
 $psise.CurrentFile.Editor.InsertText($helpText)
} #end function add-he<#