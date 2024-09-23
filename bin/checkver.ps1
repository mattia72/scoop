 # if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = resolve-path (split-path (split-path (scoop which scoop))) }
if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$checkver = "$env:SCOOP_HOME/bin/checkver.ps1"
$dir = "$psscriptroot/../bucket" # checks the parent dir
Invoke-Expression -command "$checkver -dir $dir $($args | ForEach-Object { "$_ " })"

#$new_version=git status --short | %{$_ -replace '^M  (.*)', '$1'} | Get-Item | get-content | Select-String -Pattern "`"version`": `"(.*)`""
