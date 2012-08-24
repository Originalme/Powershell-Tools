function Get-Arch
{

    if ($env:PROCESSOR_ARCHITECTURE -eq "x86") #If on a 32-bit set architecture to 32
    {
        [int]$Arch = "86"
    }

    if ($env:PROCESSOR_ARCHITECTURE -eq "AMD64") #If on a 64-bit set architecture to 64
    {
        [int]$Arch =  "64"
    }
    return $Arch
}