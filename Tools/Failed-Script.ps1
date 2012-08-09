Function Failed-Script
{
    param 
    (
        [Parameter(Mandatory=$true)]
        [string]$Issue
    ) 
    Clear-Host
    Write-Host "$Issue This script will now end."
    $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

}