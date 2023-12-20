# Gonna start with something simple, setting a static IP address
Set-NetIPInterface -InterfaceIndex 6 -Dhcp Disabled
New-NetIPAddress -InterfaceIndex 6 -AddressFamily IPv4 -IPAddress "102.168.1.10" -PrefixLength 24 -DefaultGateway "192.168.1.1"

# Now rename the computer
Rename-Computer -NewName "ADServer" -DomainCredential Administrator

# Install AD control services and DNS

# Install DNS
Install-WindowsFeature -Name DNS

# Install AD

Add-WindowsFeature -Name AD-Domain-Services

# Import AD module

Import-Module -Name ActiveDirectory

# Proceed to create a forest and promote this server to domain controller

Install-ADDSForest -DomainName npv.com