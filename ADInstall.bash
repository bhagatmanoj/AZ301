$path = "C:\Windows\NTDS" 
$dfl = "win2012R2"
$domainname = "manoj.com"
$domainnetbiosname = "manoj"
$forestmode = "Win2012R2"
$Installdns = "true"
#$logpath = "database path is already exist"
#$credential = Get-Credential 
$password = "Covid@192021" | ConvertTo-SecureString -asPlainText -Force
Install-windowsfeature AD-domain-services
Import-Module ADDSDeployment
Install-AddsForest -DomainName $domainname -CreateDnsDelegation:$false -DatabasePath $path -DomainMode  $dfl -DomainNetbiosName $domainnetbiosname -ForestMode $forestmode -InstallDns:$true -LogPath $path -NoRebootOnCompletion:$false -SysvolPath "C:\Windows\SYSVOL" -Force:$true -SafeModeAdministratorPassword $password



