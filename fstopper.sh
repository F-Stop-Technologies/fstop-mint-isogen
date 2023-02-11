#!/bin/bash

sudo rm -rf /tmp/* /home/remastersys/*
sudo rm -f /tmp/*.* /home/remastersys/*.*
echo "Preparing packages..."
sudo dpkg --add-architecture i386
sudo apt update
echo "Ensuring the important stuff's up-to-date..."
sudo apt-get upgrade
sudo apt install genisoimage unzip 7zip debian-installer
sudo apt install -y git wget wine dosbox flatpak snapd python3 psmisc python3-pip bcmwl-kernel-source firmware-linux-nonfree firmware-misc-nonfree

sudo apt install firmware-iwlwifi

sudo rm /usr/bin/node-get
sudo wget -O /usr/bin/node-get https://raw.githubusercontent.com/F-Stop-Technologies/node-get/main/node-get
sudo chmod +x /usr/bin/node-get

sudo rm /usr/bin/nvidia-easyinstall
sudo wget -O /usr/bin/nvidia-easyinstall https://raw.githubusercontent.com/F-Stop-Technologies/nvidia-installer/main/nvidia-easyinstall
sudo chmod +x /usr/bin/nvidia-easyinstall

echo "sudo node-get install net.brinkervii.grapejuice" > /usr/bin/roblox-easyinstall
chmod +x /usr/bin/roblox-easyinstall

sudo rm /tmp/update-custom || "Update custom not exist (normal)"
sudo wget -O /tmp/update-custom https://raw.githubusercontent.com/F-Stop-Technologies/node-get/main/update-custom-goodies
sudo bash /tmp/update-custom
  
rm -rf /home/tester/.mozilla /tmp/* /tmp/*.* #clean up the workspace before we continue!

sudo remastersys-gui

echo "Generated! Go to /tmp in your file manager and copy the iso!"
