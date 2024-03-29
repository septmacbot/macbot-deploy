#! /bin/sh


sudo apt install lxde
sudo apt install tigervnc-standalone-server tigervnc-xorg-extension
sudo apt-get install neofetch

# Sometimes it fails to create this file, this is needed to use lxde within vnc
mkdir ~/.vnc
touch ~/.vnc/xstartup
echo "unset SESSION_MANAGER" > ~/.vnc/xstartup
echo "unset DBUS_SESSION_BUS_ADDRESS" >> ~/.vnc/xstartup
echo "startlxde &" >> ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
#sudo cp ~/macbot/launcher/bash/xstartup ~/.vnc



echo "PLEASE SET YOUR VNC ACCESS CREDENTIALS"
# Will prompt for credentials
vncserver
# Quietly checking and launching the vnc server upon ssh connection
sudo echo "vncserver :2 -depth 24 -geometry 1920x1080 > /dev/null" >> ~/.bashrc

# sudo wget --output-document=/usr/share/backgrounds/MacBotWallpaper.png https://github.com/septmacbot/macbot/raw/main/docs/Labs/Wallpapers/MARCWallpaper.png
#sudo gsettings get org.gnome.desktop.background picture-uri 'file: ~/macbot/docs/Labs/Wallpapers/MARCWallpaper.png
sudo reboot
# Must swap out wallpaper manually because vnc and desktop modes use different desktop environments
