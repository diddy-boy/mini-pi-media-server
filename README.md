# 🥧 Mini Pi Media Server

**A lightweight, all-in-one media server optimized for Raspberry Pi Zero 2 W through Raspberry Pi 5.**

What is it? A very lightweight media server that can run on a Raspberry Pi zero 2 w up to a Raspberry Pi 5. Version 4.3 onwards has the onboard wifi as an access point that the pi routes network traffic through to the ethernet port as well as hosting minidlna, cockpit, samba and apache onto both networks.

[![Demo Video](https://img.shields.io/badge/YouTube-Demo%20Video-red?style=for-the-badge&logo=youtube)](https://www.youtube.com/watch?v=HLibPLdSw-g)

---

## 📺 What’s Inside?
* **Samba:** Local network file access, optimized for low-memory environments.
* **Cockpit:** Web-based remote administration.
* **MiniDLNA:** Lightweight streaming to Smart TVs with custom directory scanning.
* **Apache:** Web-based streaming and file access using efficient directory aliasing.
* **Media Scraper:** Auto-pulls movie posters and synopses daily at 5 AM.
* **Auto-Conversion:** Background service converts MKV to MP4 at midnight for maximum compatibility.

🚀 Quick Install
Run this single command in your Raspberry Pi terminal to begin the automated setup:

Bash
---
wget -qO- [https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh](https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh) | bash

🛠️ Troubleshooting (The "I Borked It" Fix)
If the installation fails or you need to reset/repair the configuration, simply re-run the install command:

Bash
---
wget -qO- [https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh](https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh) | bash
---
📂 Integrated Automation & "Smart" Scripts
This project includes custom logic designed to make the Pi a true "headless" appliance:

usb_sync.sh (Auto-Ingest): Automatically detects and mounts USB drives, syncing Video, Music, and Pictures to the internal library. It features Power-Loss Protection by performing a sync and unmounting safely before the user removes the drive.

mkv-2-mp4.sh (Midnight Optimizer): Automatically handles media conversion for maximum compatibility. If an H.264 video stream is detected, it remuxes (instant copy); otherwise, it uses Hardware Acceleration (h264_v4l2m2m) to convert MKVs to MP4s efficiently.

server_sync.sh (Home Sync): Pull media from your home NAS before a trip. This script supports pulling from both CIFS (Samba) and NFS sources.

reconfigure-wifi.sh: Manage WiFi networks and Hotspot/Access Point settings.

network-verification-tool.sh: Displays WiFi card status, Access Point names, and passwords.

server_sync.sh (Home Sync): Pull media from your home NAS before a trip. This script supports pulling from both CIFS (Samba) and NFS sources.

reconfigure-wifi.sh: Manage WiFi networks and Hotspot/Access Point settings.

network-verification-tool.sh: Displays WiFi card status, Access Point names, and passwords.
