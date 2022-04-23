#Created by Joeya1ds 3/25/22

$filepath = "" #Enter filepath here
$hostname = read-host -Prompt 'Enter computer mneumonic or IP address'
New-Item -Path $filepath -Name "$hostname.txt" -ItemType "file"
Start-Transcript -path $filepath\$hostname.txt -Append
Ping.exe -t $hostname | ForEach {"{0} - {1}" -f (Get-Date),$_}