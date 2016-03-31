[CmdletBinding()]
Param(
	[Parameter(Mandatory=$True,Position=0,
		HelpMessage='PSExec Path')]
	[string]$pathToPsExec
)

# Configure TFS
$command = $pathToPsExec + "\psexec.exe"
& $command -accepteula -h -e "$tfsconfigexe" unattend /configure /type:standard  2>&1

# Allow public through firewall
netsh advfirewall firewall set rule name='Team Foundation Server:8080' new profile='any'
