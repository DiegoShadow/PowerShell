Import-module ActiveDirectory   
Import-CSV "Computadores.csv" | % {  
$OSValues = Get-WmiObject -class Win32_OperatingSystem -computername $_.ComputerName
$OSValues.Description = $_.Description  
$OSValues.put()
}
