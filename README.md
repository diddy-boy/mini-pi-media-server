What is it ?
A very light weight media server that can run on a Raspberry Pi zero 2 w up to a Raspberry Pi 5.
version 4.3 onwards has the onboard wifi as an access point that the pi routes network traffic through to the ethernet port as well as hosting minidlna, cockpit, samba and apache onto both networks

## Demo Video
[![Demo Video](https://img.youtube.com/vi/HLibPLdSw-g/0.jpg)](https://www.youtube.com/watch?v=HLibPLdSw-g)

🥧 Mini Pi Media Server
A lightweight, all-in-one media server optimized for Raspberry Pi Zero 2 W through Raspberry Pi 5.

Starting with v4.3+, the system can act as a WiFi Access Point, routing traffic to Ethernet while hosting services on both networks.

📺 What’s Inside?
Samba: Local network file access.

Cockpit: Web-based remote administration.

MiniDLNA: Streaming to Smart TVs and devices.

Apache: Web-based streaming and file access.

Media Scraper: Auto-pulls movie posters and synopses daily at 5 AM.

Auto-Conversion: Background service converts MKV to MP4 at midnight for maximum compatibility.

🚀 Quick Install
Run this single command in your Raspberry Pi terminal to begin the automated setup:

Bash
wget -qO- https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh | bash
🛠️ Troubleshooting (The "I Borked It" Fix)
If the installation fails or you need to reset the configuration, run the following:

Bash
wget -qO main.zip https://github.com/diddy-boy/mini-pi-media-server/archive/refs/heads/main.zip && unzip -o main.zip && cd mini-pi-media-server-main && unzip -o pi-setup*.zip && cp -rf pi-setup ~/ && cd ~ && rm -rf mini-pi-media-server-main main.zip && cd ~/pi-setup && chmod +x ./*.sh && sudo ./mini-pi-setup.sh
📂 Included Tools & Scripts
Rotating-server-sync.sh: Syncs the last XX months of media from a home server.

reconfigure-wifi.sh: Manage WiFi networks and Hotspot/Access Point settings.

mkv-2-mp4.sh: Batch handles media conversion for older Smart TVs.

scraper.py: Python tool using DuckDuckGo and BeautifulSoup for metadata.

network-verification-tool.sh: Displays WiFi card status, Access Point names, and passwords.

⚖️ License
This project is licensed under the MIT License.
Note: Third-party automated tools (MiniDLNA, Samba, Apache, Cockpit) are governed by their respective GPL/Apache/LGPL licenses.
### Third-Party Software
This project is a collection that automates the installation of various open-source tools. Each of these tools is governed by its own respective license:
* **MiniDLNA:** GPL-2.0
* **Samba:** GPL-3.0
* **Apache:** Apache License 2.0
* **Cockpit:** LGPL-2.1

Users should ensure they comply with the terms of these individual licenses when using this project from other software used in this project.
