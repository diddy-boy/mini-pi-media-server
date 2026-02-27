# 🥧 Mini Pi Media Server

**A lightweight, all-in-one media server optimized for Raspberry Pi Zero 2 W through Raspberry Pi 5.**

What is it? A very lightweight media server that can run on a Raspberry Pi zero 2 w up to a Raspberry Pi 5. Version 4.3 onwards has the onboard wifi as an access point that the pi routes network traffic through to the ethernet port as well as hosting minidlna, cockpit, samba and apache onto both networks.

[![Demo Video](https://img.shields.io/badge/YouTube-Demo%20Video-red?style=for-the-badge&logo=youtube)](YOUR_YOUTUBE_LINK_HERE)

---

## 📺 What’s Inside?
* **Samba:** Local network file access, optimized for low-memory environments.
* **Cockpit:** Web-based remote administration.
* **MiniDLNA:** Lightweight streaming to Smart TVs and devices with custom directory scanning.
* **Apache:** Web-based streaming and file access using efficient directory aliasing.
* **Media Scraper:** Auto-pulls movie posters and synopses daily at 5 AM.
* **Auto-Conversion:** Background service converts MKV to MP4 at midnight for maximum compatibility.

---

## 🚀 Quick Install
Run this single command in your Raspberry Pi terminal to begin the automated setup:

```bash
wget -qO- [https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh](https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh) | bash
🛠️ Troubleshooting (The "I Borked It" Fix)If the installation fails or you need to reset/repair the configuration, simply re-run the install command:Bashwget -qO- [https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh](https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh) | bash
📂 Integrated Automation & "Smart" ScriptsThis project includes custom logic designed to make the Pi a true "headless" appliance:usb_sync.sh (Auto-Ingest): Plug in a USB drive to automatically sync Video, Music, and Pictures to the internal library. It features Power-Loss Protection by syncing and unmounting safely before removal.mkv-2-mp4.sh (Midnight Optimizer): Automatically handles media conversion for older TVs. If H.264 is detected, it remuxes (instant copy); otherwise, it uses Hardware Acceleration (h264_v4l2m2m) to convert MKVs to MP4s efficiently.server_sync.sh (Home Sync): Pull media from your home NAS before a trip. Supports pulling from both CIFS (Samba) and NFS sources.reconfigure-wifi.sh: Manage WiFi networks and Hotspot/Access Point settings (supports NetworkManager/nmcli).network-verification-tool.sh: Displays WiFi card status, Access Point names, and passwords.⚙️ Resource Optimization (Tester's Choice)Designed by a software tester, this project is "pincer-tested" on both the Pi Zero 2 W and Pi 5.OptimizationMethodBenefitIdle RAM~200MB UsageLeaves breathing room for streaming on 512MB boards.File AccessApache AliasingServes media directly via /files without duplicating data.Video EncodingV4L2 HardwareOffloads encoding from CPU to VPU to prevent overheating.PermissionsUnified GID/UIDForces minidlna ownership across Samba and local syncs.⚖️ LicenseThis project is licensed under the MIT License. Note: Third-party automated tools (MiniDLNA, Samba, Apache, Cockpit) are governed by their respective GPL/Apache/LGPL licenses.Third-Party SoftwareMiniDLNA: GPL-2.0Samba: GPL-3.0Apache: Apache License 2.0Cockpit: LGPL-2.1
