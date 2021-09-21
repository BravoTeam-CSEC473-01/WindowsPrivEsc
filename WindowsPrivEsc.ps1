#Owen McCarthy - osm6495@rit.edu

#Download the PrivescCheck repo from GitHub (Basically a curl)
Invoke-WebRequest -URI https://github.com/itm4n/PrivescCheck/archive/refs/heads/privesccheckmaster.zip

#Unzip the repo (Should go to the same directory, if someone wants to change where the ouput goes you can do that here)
Expand-Archive -Path privesccheckmaster.zip

##############
# Quick Wins #
##############

whoami
systeminfo

#If we can use WMIC, get service and application details
wmic service list full > services.txt
tasklist > processes.txt

#Has autopassword been set
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"

#######################
# PrivescCheck Script #
#######################

#Run the PrivescCheck script without modifying execution policy:
Get-Content .\PrivescCheck.ps1 | Out-String | IEX

#Runs the script in extended mode and outputs a report of the possible escalations in .txt form
Invoke-PrivescCheck -Extended -Report PrivescCheck_%COMPUTERNAME% -Format TXT

