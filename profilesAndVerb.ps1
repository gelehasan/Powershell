<# Working with verbs #>
Get-Verb

<# Sort it by tranditional cataogies such as common, data and life cycle #>
Get-Verb  | Sort-Object Verb

<#You can use wild cards to look for a specific ones  #>
Get-Verb re*

<# Or from a certain group #>
Get-Verb | Where-Object Group -eq Security



<# profiles in powershell #>
$PROFILE | Format-List * -force


<# you can use Test-Path to check if a specific path
  you can create a new file by using New-Item #>

if ( !( Test-Path $profile.CurrentUserCurrentHost ) ) {
 New-Item -ItemType File -Path $profile.CurrentUserCurrentHost
 }
 
<# for adding commands, functions or aliases to the user profile #>
 Add-Content  -Path $profile -Value "New-Alias -Name Get-Ip -Value 'ipconfig.exe'"
