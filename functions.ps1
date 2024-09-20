
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


function Invoke-Greeting {
 [CmdletBinding()]
 param (
 [Parameter(Mandatory, ValueFromPipeline, 
ValueFromPipelineByPropertyName)]
 [string]$Name
 )
 process {
 Write-Output "Hello $Name!"
 }
 }
 
 
 #when used by value, seems like it can be good too pass  multiple values
  > "Alice","Bob" | Invoke-Greeting
 Hello Alice!
 Hello Bob!
 
 # When used by property name
 > [pscustomobject]@{Name = "Miriam"} | Invoke-Greeting
 Hello Miriam!
