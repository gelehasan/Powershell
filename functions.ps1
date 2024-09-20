
# example of a powershell function

function Invoke-greetings{
	params(
		[string]$name
		)
		
		Write-Host "Hello $name!"

}

// When calling the funtion

Invoke-geetings -name "Sam"


# an example of using supportshouldprocess

function Invoke-Greetings {
	[cmdletbinding(SupportShouldProcess)]
	param(
		[(Parameter(Mandatory)]
		[string]$name
		)
		
		forEach( $item in $name){
				if($PSCmdlet.ShouldProcess($item)){
					Write-Output "Hello $item" 
				}
		}
}
