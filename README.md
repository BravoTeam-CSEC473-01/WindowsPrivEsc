# WindowsPrivEsc
Windows Privilege Escalation Script

Will download and implement the following scripts:
https://github.com/itm4n/PrivescCheck

Windows Privilege Escilation Guide with tips and tricks
https://github.com/frizb/Windows-Privilege-Escalation

## Usage
Install from https://github.com/BravoTeam-CSEC473-01/WindowsPrivEsc.git

Running in CMD:
```
C:\Temp\>powershell -ep bypass -c ". .\WindowsPrivEsc.ps1; Invoke-WindowsPrivEsc"
```

Running from Powershell:
```
PS C:\Temp\> Get-Content .\WindowsPrivEsc.ps1 | Out-String | IEX
PS C:\Temp\> Invoke-WindowsPrivEscCheck
```
