#!/bin/bash
set -euo pipefail

# rpm-fusion repos
sudo dnf install -y \
  https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# openh264 library
sudo dnf -y config-manager setopt fedora-cisco-openh264.enabled=1

# AppStream metadata (use explicit packages)
sudo dnf -y update @core
sudo dnf -y install rpmfusion-\*-appstream-data

# Switch to full ffmpeg
sudo dnf -y swap ffmpeg-free ffmpeg --allowerasing

# Install additional codec
sudo dnf -y install @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

# Hardware Accelerated Codec (VA-API)
sudo dnf -y install mesa-va-drivers-freeworld
sudo dnf -y install mesa-va-drivers-freeworld.i686

