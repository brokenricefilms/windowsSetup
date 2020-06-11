# windowsSetup

1. choco setup

```
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

2. Install essential

```
choco install mingw git neovim nodejs python3 -y
```

## To-do

- [ ] setup nvim appdata local .. #disable coc vim
