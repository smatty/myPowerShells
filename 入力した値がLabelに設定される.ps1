[UIAutomation.Preferences]::Highlight = $false

$process = Start-Process "C:\Users\shin\Source\Repos\WindowsApplication2\WindowsApplication2\bin\Debug\WindowsApplication2.exe" -passthru
$window = Get-UiaWindow -ProcessId $process.Id
$window | Get-UiaEdit -AutomationId 'TextBox1' | Set-UIAEditText -Text '123'
$window | Get-UiaButton -AutomationId 'Button1' | Invoke-UiaButtonClick | Out-Null
$lbl = $window | Get-UiaText -AutomationId 'Label1' | Write-Output

