#!/bin/bash
set -euo pipefail

# Add Trivalent-Browser repo file
sudo dnf -y config-manager addrepo --from-repofile=https://repo.secureblue.dev/secureblue.repo

# Install Trivalent Browser
sudo dnf -y install trivalent
