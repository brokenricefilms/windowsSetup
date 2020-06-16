# 1. choco setup

 Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

 # 2. Install essential

 choco install llwm mingw git neovim nodejs python3 grep -y

 # 3. Nvim setup
mkdir C:\Users\Administrator\AppData\Local\nvim
cd C:\Users\Administrator\AppData\Local\nvim
wget "https://raw.githubusercontent.com/thuanpham2311/dotfiles/master/nvim/init.vim" -OutFile init.vim
md ~\AppData\Local\nvim-data\site\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim-data\site\autoload\plug.vim"
  )
)
