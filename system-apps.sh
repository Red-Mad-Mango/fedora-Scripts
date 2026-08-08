#!/usr/bin/env bash
set -euo pipefail

apps=(
 helix	
 keepassxc
 yt-dlp
 fastfetch
)

for app in "${apps[@]}"; do
 sudo dnf install -y "$app"
done
