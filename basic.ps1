$Path= $env:Temp + "\exampleFolder";
$Items = Get-ChildItems -Path $Path



forEach($file in $Items){

  Write-Host $file

}
