$name = Read-Host "Please enter the first name"
$lastname = Read-Host "Please enter your laste name"
$username = Read-Host "Please enter your user name (Format: first letter of your first name, followed by your laste name"
$department = Read-Host "Which department will this user be a part of?"

New-ADUser -Name $name -GivenName $username -Surname $lastname -SamAccountName $username -Department $department -Enabled $true