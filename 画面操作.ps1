[UIAutomation.Preferences]::Highlight = $false

$process = Start-Process "C:\Users\shin\Source\Repos\WindowsApplication2\WindowsApplication2\bin\Debug\WindowsApplication2.exe" -passthru
$window = Get-UiaWindow -ProcessId $process.Id
$window | Get-UiaButton -Name '1' | Invoke-UiaButtonClick | Out-Null
$window | Get-UiaButton -Name '加算' | Invoke-UiaButtonClick | Out-Null
$window | Get-UiaButton -Name '2' | Invoke-UiaButtonClick | Out-Null
$window | Get-UiaButton -Name '等号' | Invoke-UiaButtonClick | Out-Null