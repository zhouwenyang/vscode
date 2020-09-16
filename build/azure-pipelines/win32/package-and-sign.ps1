. build/azure-pipelines/win32/exec.ps1
$ErrorActionPreference = "Stop"

$Arch = "$env:VSCODE_ARCH"

exec { yarn gulp "vscode-win32-$Arch-archive" "vscode-win32-$Arch-system-setup" "vscode-win32-$Arch-user-setup" --sign }
