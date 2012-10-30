New-PSDrive `
	-Name 'SkyDrive' `
	-Description 'Локальная копия диска MS SkyDrive' `
	-PSProvider 'FileSystem' `
	-Root (
		(get-item `
			-ErrorAction Stop `
			'hkcu:\software\microsoft\skydrive' `
		).GetValue('UserFolder')
	) `
| Out-Null `
;

Export-ModuleMember `
;