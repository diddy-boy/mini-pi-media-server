What is it ?
A very light weight media server that can run on a Raspberry Pi zero 2 w up to a Raspberry Pi 5.

## Demo Video
[![Demo Video](https://img.youtube.com/vi/qeu4PCG4AYE/0.jpg)](https://www.youtube.com/watch?v=qeu4PCG4AYE)

What does it run ? 
Samba for local network accees,
Cockpit for web based remote administration of the server,
Minidlna - for local streaming to smart devices like TV's,
Apache - for web based access and streaming the media through a web browser (or through a web browser on a phone).

So what does it look like ?
https://hackaday.io/project/199227-pi-zero-2w-mini-dlna-server

I like it, how do I install it ?
The installer and all config files are contained in the zip folder which makes it easier just to install on a raspberry pi with one command ( copy and paste):-

wget https://github.com/diddy-boy/mini-pi-media-server/raw/main/pi-setupV3-3.zip && unzip pi-setupV3-3.zip && cd pi-setup && sudo ./mini-pi-setup.sh

so what is in the zip file ?
All images, config files and web files.

How do I install manually ?
download the pi-setup.zip file and then unzip the file in your Raspberry home directory (normally a user called pi)

cd into pi-setup folder

You will be presented with three shell scripts and three folders
Just run 'sudo ./mini-pi-setup.sh'

this will install all software and place all config files into their relevant folders
the user will be asked for a Samba password and if they want to set up a wifi to connect to along with an access point name and password.
yes the raspberry pi can become a hotspot as well when away from the home network.
thee user is then asked if they want to set up a timed syncronisation from a local server and if they want to disable swap space

What are the other scripts ?
Rotating-server-sync.sh - Pull down the most recent media from a home server in the past xx months. the user can set how many months to pull down
reconfigure-wifi.sh - set up which wifi network to connect to and also set up an access point and password for when the mini pi server is away from home
Configure-server-sync.sh - users can set up a timed sync service to always sync media from and set a time to syncronise every day.

I borked it, how can I fix it ?
run the command to download and install again :-
wget https://github.com/diddy-boy/mini-pi-media-server/raw/main/pi-setupV3-2.zip && unzip pi-setupV3-2.zip && cd pi-setup && sudo ./mini-pi-setup.sh
