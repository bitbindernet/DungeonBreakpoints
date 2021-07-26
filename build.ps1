$toctemplate = Get-Content -raw ./toc.json | convertfrom-json -AsHashtable
. ./creds.ps1

$v=$($toctemplate."Version")
$toctemplate."Version" = [version]::New($v.Major,$($v.Minor+1),0,0)
$toctemplate | convertto-json | set-content toc.json

##Generate Toc:
$tocoutput = "## Interface: {0}`r`n## Title: {1}`r`n## Author: {2}`r`n## Version: {3}`r`n`r`n{4}" -f $($toctemplate.Interface), ($toctemplate.Title), ($toctemplate.Author), "$($toctemplate."Version")", ($toctemplate.packageFiles.luaFilename)

Set-content -path ($toctemplate.packageFiles.tocFilename) -value $tocoutput -force

Compress-Archive -Path @($tocTemplate.packageFiles.Values) -DestinationPath $($toctemplate.packageFiles.luaFilename).replace("lua","zip") -force