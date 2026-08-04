#!/bin/bash
set -euo pipefail

# rpm-fusion repos
sudo dnf install -y \
  https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# openh264 library
sudo dnf config-manager --set-enabled fedora-cisco-openh264

# AppStream metadata (use explicit packages)
sudo dnf install -y rpmfusion-free-appstream-data rpmfusion-nonfree-appstream-data

# Switch to full ffmpeg
sudo dnf swap -y ffmpeg-free ffmpeg --allowerasing

# Install additional codec
sudo dnf install -y @multimedia \
  --setopt="install_weak_deps=False" \
  --exclude=PackageKit-gstreamer-plugin

# Hardware Accelerated Codec (VA-API)
sudo dnf install -y mesa-va-drivers-freeworld
sudo dnf install -y mesa-va-drivers-freeworld.i686

