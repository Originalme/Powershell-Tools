function Join-Domain
{
    param ( [Parameter(Mandatory=$true)][string]$myusername)
    $_domainCredential = $Host.UI.PromptForCredential("Enter domain credentials", "Enter domain credentials to be used when joining computer to the domain", "", "NetBiosUserName")
    $OU = Read-Host "OU:"
    Add-Computer -DomainName fai.lcl -cred $_domainCredential -OUPath ("OU=$OU,DC=fai,DC=lcl")
}

