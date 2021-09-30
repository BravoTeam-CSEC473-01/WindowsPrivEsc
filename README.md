# WindowsPrivEsc
Windows Privilege Escalation Script

Will download and implement the following scripts:
https://github.com/itm4n/PrivescCheck

Windows Privilege Escilation Guide with tips and tricks
https://github.com/frizb/Windows-Privilege-Escalation

## Usage
Install from https://github.com/BravoTeam-CSEC473-01/WindowsPrivEsc.git

IMPORTANT!!
```
Edit the ps1 file and put your username in the path variable on the second line,
this is required so that the file can be downloaded to your desktop, a directory where the powershell
script will not need to be run as administrator.
```

Running from Powershell:
```
PS C:\Temp\> Get-Content .\WindowsPrivEsc.ps1 | Out-String | IEX
```
