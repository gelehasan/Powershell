Set-ADAccountPassword james -Reset -NewPassword (Read-Host -AsSecureString -Promt "New password") -Verbose
Set-ADUser -ChangePasswordAtLogon $true -Identity james -Verbose
