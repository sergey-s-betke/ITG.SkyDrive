New-PSDrive `
	-Name 'SkyDrive' `
	-Description 'Локальная копия диска MS SkyDrive' `
	-PSProvider 'FileSystem' `
	-Root (
		(Get-Item `
			-ErrorAction Stop `
			'HKCU:\Software\Microsoft\SkyDrive' `
		).GetValue('UserFolder')
	) `
	-Scope Global `
| Out-Null `
;

Export-ModuleMember `
;