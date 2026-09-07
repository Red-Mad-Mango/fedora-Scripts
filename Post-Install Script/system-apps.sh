#!/usr/bin/env bash
set -euo pipefail

apps=(
 helix	
 keepassxc
 yt-dlp
 fastfetch
 btop
 eza
 zoxide
 bat
 papirus-icon-theme
 ruff
 # noctalia #sway
 # mpv #sway
 # foot #sway
 # rofi
 # libreoffice-writer #sway
 # haruna #KDE
 # cmus #sway 
 # zathura #sway
 # zathura-plugins-all #sway
 # swappy #sway
 # ncdu #sway
 # wf-recorder #sway
 # slurp #sway
 # xdg-desktop-portal-gtk #sway
 # xdg-desktop-portal #sway
 # mate-polkit #sway
)

for app in "${apps[@]}"; do
 sudo dnf install -y "$app"
done
