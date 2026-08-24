#!/usr/bin/env bash
set -euo pipefail

apps=(
 # noctalia #sway
 helix	
 keepassxc
 yt-dlp
 fastfetch
 # mpv #sway
 # foot #sway
 ruff
 # rofi
 btop
 libreoffice-writer #KDE
 # haruna #KDE
 cmus 
 zathura #sway
 zathura-plugins-all #sway
 eza
 zoxide
 bat
 swappy #sway
 papirus-icon-theme
 ncdu #sway
 wf-recorder #sway
 slurp #sway
 xdg-desktop-portal-gtk #sway
 xdg-desktop-portal #sway
)

for app in "${apps[@]}"; do
 sudo dnf install -y "$app"
done
