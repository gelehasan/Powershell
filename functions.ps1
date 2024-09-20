
# example of a powershell function

function Invoke-greetings{
	params(
		[string]$name
		)
		
		Write-Host "Hello $name!"

}

// When calling the funtion

Invoke-geetings -name "Sam"
