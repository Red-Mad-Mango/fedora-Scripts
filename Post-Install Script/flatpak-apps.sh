#!/usr/bin/env bash
set -euo pipefail

# Add Flathub remote (system scope)
#flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

apps=(
  com.github.tchx84.Flatseal #flatseal
  com.heroicgameslauncher.hgl #heroic game launcher
  com.github.jeromerobert.pdfarranger #pdfarranger
  io.gitlab.metadatacleaner.metadatacleaner #metadatacleaner
  page.codeberg.censor.Censor #censor
  org.inkscape.Inkscape #inkscape
  org.kde.kdenlive #kdenlive
  org.gnome.Music #gnome-music
  io.gitlab.theevilskeleton.Upscaler #upscaler
  com.github.johnfactotum.Foliate #foliate
  no.bragefuglseth.Keypunch #keypunch
  be.alexandervanhee.gradia #gradia
  org.gnome.Chess #gnome-chess
  app.drey.EarTag #eartag
  io.github.shonebinu.Defuse #defuse
  io.github.nacho.mundi #mundi
  br.eng.silas.qpdftools #qpdftools
  org.gnome.gitlab.somas.Apostrophe #apostrophe
  io.gitlab.adhami3310.Converter #switchroo
  io.github.wartybix.Constrict #constrict
  io.github.nokse22.asciidraw #ascii draw
  io.github.masakk1.press #audio compressor
  com.github.hugolabe.Wike #wikipedia
  dev.mufeed.Wordbook #definitions
  art.fatdawlf.Piccolo #color-picker
  com.github.huluti.Curtail #img-optimizer
  # org.localsend.localsend_app
  # org.gimp.GIMP #gimp
  # moe.liam.audimorf #audio convertor
  # com.github.wwmm.easyeffects #easy effect
)

for app in "${apps[@]}"; do
  flatpak install -y flathub "$app"
done
