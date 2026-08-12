#!/usr/bin/env bash
set -euo pipefail

apps=(
 helix	
 keepassxc
 yt-dlp
 fastfetch
 # mpv
 foot
 ruff
 rofi
 btop
 libreoffice-writer #KDE
 haruna #KDE
 cmus #KDE
)

for app in "${apps[@]}"; do
 sudo dnf install -y "$app"
done
