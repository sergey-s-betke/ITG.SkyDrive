[CmdletBinding()]
param()

Import-Module `
	(Join-Path `
		-Path ( Split-Path -Path ( $MyInvocation.MyCommand.Path ) -Parent ) `
		-ChildPath 'ITG.SkyDrive' `
	) `
	-Force `
	-Verbose `
;

Get-Module `
	-Name 'ITG.SkyDrive' `
| Get-Readme -OutDefaultFile;
