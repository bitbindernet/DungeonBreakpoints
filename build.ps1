$credentialFile = "./creds.ps1"
$projectFile = "./project.json"
$curseApiFile = "./curseforgeapi.ps1"

$toctemplate = Get-Content -raw $projectFile | convertfrom-json -AsHashtable
. $credentialFile

$v=$($toctemplate."Version")
$toctemplate."Version" = [version]::New($v.Major,$($v.Minor+1),0,0)
$toctemplate | convertto-json | set-content $projectFile

##Generate Toc:
$tocoutput = "## Interface: {0}`r`n## Title: {1}`r`n## Author: {2}`r`n## Version: {3}`r`n`r`n{4}" -f $($toctemplate.Interface), ($toctemplate.Title), ($toctemplate.Author), "$($toctemplate."Version")", ($toctemplate.packageFiles.luaFilename)
new-item -path dungeonbreakpoints -ItemType Directory
if($?)
{
    Set-content -path "./dungeonbreakpoints/$($toctemplate.packageFiles.tocFilename)" -value $tocoutput -force
    Copy-Item $($toctemplate.packageFiles.luaFilename) "./dungeonbreakpoints/$($toctemplate.packageFiles.luaFilename)"
    Compress-Archive -Path dungeonbreakpoints -DestinationPath $($toctemplate.packageFiles.luaFilename).replace("lua","zip") -force
}
#. $curseApiFile

# todo: upload file to curse as part of a pipeline

# there will be a chicken/egg issue with tracking version number. 
# Probably eventually move that to a manual process and use build/job numbers instead

