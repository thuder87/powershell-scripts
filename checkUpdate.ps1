Write-Host ("Check Windows Update History")

$hostName = Read-Host -Prompt 'Enter hostname of device currently on the network'

#confirm the device is on the network
$connected = ping $hostName | Out-String
if($connected -like '*Reply from*'){
	Write-Host ("Device is on the network.")
	
	get-hotfix -computername $hostName
	
	Start-Sleep 6
}
else{
	Write-Host ("Could not ping device.")
	Start-Sleep 2
}
