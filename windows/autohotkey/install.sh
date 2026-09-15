#!/usr/bin/env bash
# Creates a Windows Startup shortcut that runs win11-petrus.ahk straight from
# this WSL directory, so edits in the repo take effect without copying.
set -euo pipefail

dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
script="$dir/win11-petrus.ahk"
[ -f "$script" ] || { echo "not found: $script" >&2; exit 1; }
[ -n "${WSL_DISTRO_NAME:-}" ] || { echo "run this inside WSL" >&2; exit 1; }

ahk=${AHK_EXE:-/mnt/c/Program Files/AutoHotkey/v2/AutoHotkey64.exe}
[ -x "$ahk" ] || { echo "AutoHotkey v2 not found: $ahk (set AHK_EXE)" >&2; exit 1; }

export AHK_TARGET="$(wslpath -w "$ahk")"
export AHK_ARGS="\"\\\\wsl.localhost\\${WSL_DISTRO_NAME}${script//\//\\}\""
export LNK_NAME="win11-petrus.lnk"
export WSLENV="AHK_TARGET:AHK_ARGS:LNK_NAME:${WSLENV:-}"

cd /mnt/c
powershell.exe -NoProfile -Command '
$lnk = Join-Path ([Environment]::GetFolderPath("Startup")) $env:LNK_NAME
$s = (New-Object -ComObject WScript.Shell).CreateShortcut($lnk)
$s.TargetPath = $env:AHK_TARGET
$s.Arguments = $env:AHK_ARGS
$s.WorkingDirectory = Split-Path $env:AHK_TARGET
$s.Save()
Write-Output "$lnk -> $($s.TargetPath) $($s.Arguments)"
'
