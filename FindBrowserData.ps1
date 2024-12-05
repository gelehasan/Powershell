$Browserdata= "BrowsersInfo.txt"
function searchForBrowserCredential{
    $chromePath = "$env:USERPROFILE\AppData\Local\Google\Chrome\User Data\Default\Login Data"
    $firefox= "$env:USERPROFILE\APPDATA\Mozilla\Firefox\Prpfiles\*.default-release\logins.json"

    Add-Content -Path $Browserdata -Value "Browser credential"
    if(Test-Path $chromePath){
        Add-Content -Path $Browserdata -Value "$chromepath"
    }

    if(Test-Path $firefox){
        Add-Content -Path $Browserdata -Value "Found firefox data: $firefox"
    }
}
