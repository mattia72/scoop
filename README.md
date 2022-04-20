# scoop-it
My scoop bucket

## Auto update

```ps1
cd $env:HOME\dev\scoop-it

# See the available parameters
nvim ('{0}/bin/checkver.ps1' -f (scoop prefix scoop))

# `-forceupdate` is useful for update hash
.\bin\checkver.ps1 sqlite3dll -ForceUpdate
```