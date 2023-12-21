# simple script to add user, will expand upon later

New-ADUser -Name "John Doe" -GivenName "John" -Surname "Doe" -SamAccountName "Jdoe" -UserPrincipalName "Jdoe@innovative.com" -Path "OU=Marketing,DC=innovative,DC=com" -Enabled $true