#Owen McCarthy - osm6495@rit.edu
$path = 'C:\Users\INSERTUSERNAMEHERE\Desktop\privesccheckmaster.zip' #EDIT THIS <--------------------------------------------------------------------------

#Download the script
Start-BitsTransfer -Source 'https://github.com/itm4n/PrivescCheck/archive/refs/heads/master.zip' -Destination $path

#Unpack
Expand-Archive -Path 'privesccheckmaster.zip'

#Move into new directory
cd .\privesccheckmaster\PrivescCheck-master

#######################
# PrivescCheck Script #
#######################

#Run the PrivescCheck script without modifying execution policy:
Get-Content .\PrivescCheck.ps1 | Out-String | IEX

#Runs the script in extended mode and outputs a report of the possible escalations in .txt form
Invoke-PrivescCheck -Extended -Report PrivescCheck_%COMPUTERNAME% -Format TXT

