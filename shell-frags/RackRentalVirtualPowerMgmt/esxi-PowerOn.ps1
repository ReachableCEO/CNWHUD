param(
[string]$vcenter,
[string]$vm
)

Get-Module -ListAvailable PowerCLI* | Import-Module -Verbose:$false > /dev/null
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false > /dev/null
Connect-ViServer -Server $vcenter -User tplab\powervtps -Password h7x14vFGkJr5 -Verbose:$false > /dev/null
Start-VM -RunAsync -VM "$vm" -Confirm:$false -Verbose:$false > /dev/null