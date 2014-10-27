
try { $null = gcm pshazz -ea stop; pshazz init } catch { }

$VIMPATH = "D:\Program Files\Vim\vim72\vim.exe"


Set-Alias vim $VIMPATH
Set-Alias vi  $VIMPATH

# To edit the Powershell Profile
# (Not that I'll remember this)
Function Edit-Profile
{
    vim $profile
}

# To edit Vim settings
Function Edit-Vimrc
{
    vim $HOME\_vimrc
}

# *nix style `which`
Function which($name)
{
  Get-Command $name | Select-Object -ExpandProperty Definition
}

