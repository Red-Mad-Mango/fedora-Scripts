#!/usr/bin/env bash
set -euo pipefail

# Add Flathub remote (system scope)
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

apps=(
  com.github.tchx84.Flatseal #flatseal      
  com.heroicgameslauncher.hgl #heroic game launcher
#  org.keepassxc.KeePassXC #KeepassXC
  com.github.jeromerobert.pdfarranger #pdfarranger
#  org.localsend.localsend_app
  io.gitlab.metadatacleaner.metadatacleaner #metadatacleaner
  page.codeberg.censor.Censor #censor
  org.inkscape.Inkscape #inkscape
  org.gimp.GIMP #gimp
  org.kde.kdenlive #kdenlive
  # org.gnome.Music #gnome-music
  io.gitlab.theevilskeleton.Upscaler #upscaler
  com.github.johnfactotum.Foliate #foliate
#  org.kde.ghostwriter
  no.bragefuglseth.Keypunch #keypunch
  io.github.kolunmi.Bazaar #bazaar
  # be.alexandervanhee.gradia #gradia
  org.gnome.Chess #gnome-chess
  app.drey.EarTag #eartag
  io.github.shonebinu.Defuse #defuse
  io.github.nacho.mundi #mundi
  br.eng.silas.qpdftools #qpdftools
  # org.gnome.gitlab.somas.Apostrophe #apostrophe
  io.gitlab.adhami3310.Converter #switchroo
  # org.gnome.World.Secrets #secrets
  # io.github.wartybix.Constrict #constrict
)

for app in "${apps[@]}"; do
  flatpak install -y flathub "$app"
done
