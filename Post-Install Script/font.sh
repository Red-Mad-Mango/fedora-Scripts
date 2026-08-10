#!/bin/bash
set -euo pipefail

fonts=(
	google-roboto-fonts
  google-roboto-fonts
  rsms-inter-fonts
  vernnobile-oswald-fonts
  sorkintype-merriweather-fonts sorkintype-merriweather-sans-fonts
  tlomt-league-gothic-fonts
  lato-fonts
  atkinson-hyperlegible-next-fonts
  ht-alegreya-fonts ht-alegreya-sans-fonts
  gfs-bodoni-classic-fonts gfs-bodoni-fonts
  vercel-geist-fonts vercel-geist-mono-fonts
  typetogether-literata-fonts
  pt-astra-sans-fonts pt-astra-serif-fonts
  uswds-public-sans-fonts
)

for fonts in "${fonts[@]}"; do
 sudo dnf install -y "$fonts"
done
