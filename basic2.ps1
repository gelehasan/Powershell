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
