Get-ADUser -Filter * -SearchBase ‘OU=SYNCTEST,OU=Domain Users,OU=Users,OU=USA,OU=ENDURAPLAS,DC=RAPID,DC=LOCAL’ -Properties userPrincipalName | foreach {Set-ADUser $_ -UserPrincipalName (“{0}@{1}” -f $_.name,”rapidplas.com”)}
