Set-ADAccountPassword james -Reset -NewPassword (Read-Host -AsSecureString -Promt "New password") -Verbose
