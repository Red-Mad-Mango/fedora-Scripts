#!/bin/bash
set -euo pipefail

log="./install-$(date +%Y-%m-%d_%H:%M).log"

chmod +x codecs.sh flatpak-apps.sh trivalent-browser.sh system-apps.sh

echo " ##### INSTALL CODECS ##### "
bash ./codecs.sh 2>&1 | tee -a "$log"
#sh ./rpm-fusion-codecs.sh | tee -a "$log"

echo " ##### INSTALL FLATPAK ##### "
bash ./flatpak-apps.sh 2>&1 | tee -a "$log"

echo "##### Install Trivalent-Browser"
bash ./trivalent-browser.sh 2>&1 | tee -a "$log"

echo "##### Install System-apps"
bash ./system-apps.sh 2>&1 | tee -a "$log"




