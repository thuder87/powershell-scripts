#nbtstat -A $ipaddress #outputs, among other things, a hostname

$input = Read-Host 'Enter your machine information'

if($input -like '*.*')
{
	$ipaddress = $input
	$rawHostname = nbtstat -A $ipaddress
	$temp1 = $rawHostname.IndexOf('Name')
	#$hostname = $rawHostname.substring($temp1 - 2, 14)
	Write-Host $rawHostname.IndexOf('Name')
	$rawHostname | Out-File C:\users\ranastasi\Desktop\rawHostname.txt
}
elseif($input -like '*-*' -OR $input -like 'WS*')
{
	$hostname = $input
	$rawIPaddress = ping $hostname
}
else
{
	Write-Host 'Unknown or erroneous entry. Exiting program.'
	Start-Sleep -s 1
}
Start-Sleep -s 20