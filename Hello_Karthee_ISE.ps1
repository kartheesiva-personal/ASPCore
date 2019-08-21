Set-Variable -Name "RootUrl" -value "C:\Karthee\Learning Materials\Powershell\Power_shell_sample\"
get-childitem -path $RootUrl"SFTWebBackup\*" | Remove-Item -Recurse
Copy-Item -path $RootUrl"SFTWeb\*" -Destination $RootUrl"SFTWebBackup\" -Recurse
Remove-Item -path $RootUrl"SFTWeb\*" -Recurse
if(Test-Path $RootUrl"Publish\appsettings.json")
{
    Remove-Item -path $RootUrl"Publish\appsettings.json"
}
if(Test-Path $RootUrl"Publish\NLog.xml")
{
Remove-Item -path $RootUrl"Publish\NLog.xml"
}
Copy-Item -path $RootUrl"Publish\*" -Destination $RootUrl"SFTWeb\" -Recurse
Copy-Item -path $RootUrl"SFTWebBackup\appsettings.json" -Destination $RootUrl"SFTWeb\"
Copy-Item -path $RootUrl"SFTWebBackup\NLog.xml" -Destination $RootUrl"SFTWeb\"