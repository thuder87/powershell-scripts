#script that checks that a computer is on a network and then gives the option to
#execute one of a number of scripts
Write-Host ("Remote SAK")
$myComputer = hostname | Out-String
$hostName = Read-Host -Prompt 'Enter HostName: '
if($hostName -eq "0") {
    exit
}
$connected = Ping $hostname | Out-String
if($connected -like '*Reply from*'){
    Write-Host ("Workstation is connected")
	Start-Sleep 1
    do{
        cls
		Write-Host ("You are working with $hostname")
        Write-Host ("Available Scripts")
        Write-Host ("1. Restart Print Spooler")
        Write-Host ("2. Test Connection")
        Write-Host ("3. Restart Computer")
        $op = Read-Host -Prompt "What script would you like to execute?"
        if($op -eq 1) {
            #P:\cmd\remoteSpoolerRestart.ps1
            Write-Host ("Restarting Print Spooler Service") -ForegroundColor Yellow
            Restart-Service -InputObject $(Get-Service -ComputerName $hostName -Name Spooler) -Force
        }
        if($op -eq 2) {
            Write-Host ("Testing Connection to computer") -ForegroundColor Yellow
            Ping $hostName
            #Test-Connection -ComputerName $hostName -Source $myComputer #VDI-IS-FT-011 #not working probably due to firewall #Will be able to hard code source computer
            Start-Sleep 5
        }
	if($op -eq 3) {
		Write-Host ("Do you want to restart " + $hostName + "?")
		$choice = Read-Host -Prompt ("y/n")
		if($choice -eq 'y') {
			Restart-Computer -ComputerName $hostName -Force
			Start-Sleep 2
		}
	}
    } while ($op -ne '0')
}
else{
    Write-Host ("Could not ping Workstation")
    Start-Sleep 2
}