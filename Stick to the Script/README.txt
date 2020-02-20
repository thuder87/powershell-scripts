Here follows a description of the files in this folder

check uptime.bat
	Opening the batch file will prompt you to enter a hostname or IP address.
	Hit enter after typing in machine info and wait.
	It will seem to pause on "Loading Hotfix Information."
	The batch file will then display the most recent system boot time. 
	Press any key to exit.
	
	Mistyping information or attempting to connect to an offline device will give an error:
		"ERROR: The RPC server is unavailable."

gpupdate
	gpupdate is technically a shortcut to the command line that autoexecutes
	a single line of code: gpupdate /force

	gpupdate is dated since the change for network file storage being deployed by
	group policy, but may have some niche uses.
	
spoolerRestart.bat
	Launching this batch file will restart the spooler on a user's machine.

	The batch file needs to be run as a user with admin permissions as "other user"

	Spooler restarts are less commonly needed thanks to certain aspects of Print Logic, but are
	still needed from time to time, especially when using local printers.
	
VDI Resolution Files (096DPI.bat & 125DPI.cmd)
	VDI Resolution is located at \\dmo\packages\ULs\VDI and contains 096DPI.bat & 125DPI.cmd
	These 2 files will change the resolution for users.

	I edited those files. The slightly improved ones are in the same folder as this README.

	The change is tied to their account, not their machine. It is ideal for users that
	have trouble following instructions to change the resolution on the ZC as a whole or 
	users that share a workstation with others.

	096DPI.bat will make the display return to the default display size.

	125DPI.cmd will make the display increase the display size.

	Changes will take effect at next login

Clear MSRA.bat
	Launching this batch file will clear out your history in MSRA. The history stops being 
	useful when there are too many entries to keep track of.
	
checkUpdate.ps1
	This one is a little weird. Sometimes when we push updates people request that we check if their computer
	got the update. This file can check remotely with a caveat. It does not see every kind of update. The morning after
	an update scan your own computer to see if the most recent update shows in the last 24 hours. If so you can use it
	for that update.
	
remoteSAK.ps1
	The remoteSAK.ps1 is a small portion of a larger script I wrote for personal use. The SAK will let you ping a
	networked computer, restart it remotely, or restart it's print spooler remotely

Google Chrome Fix.bat
	Notes in the script explains what it does but basically it preserves the users old Chrome profile for VDIs but forces
	the VM to use a new one. It gives the user a new profile while saving the old one as a backup by changing the file
	extension and making the machine think that there is no .pb file to use for Chrome. It was made for a specific issue 
	but may have other uses. Just check with Russell.
	
clear print queue.bat
	If the print queue has something stuck in it that you just can't get out this will take care of it. Run with
	your credentials on the user's machine. Made this script during my last week so I didn't mess around with making
	it a remote script, but it can be done in powershell if you are so inclined to write it.