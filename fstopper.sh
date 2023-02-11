#!/bin/bash

sudo rm -rf /tmp/*
sudo rm -f /tmp/*.*
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

sudo rm /fstop-wallpapers/  || echo "Wallpapers not installed yet, not reinstalling but installing."
sudo git clone https://github.com/F-Stop-Technologies/wallpapers /fstop-wallpapers/
sudo chmod -R 777 /fstop-wallpapers

sudo mkdir /fstop-python-nodefun/
sudo wget -O /fstop-python-nodefun/duckbart.py https://raw.githubusercontent.com/F-Stop-Technologies/duckbart-fstop/main/main.py
sudo wget -O /fstop-python-nodefun/blog-gen.py https://raw.githubusercontent.com/F-Stop-Technologies/blogger_openai_fstop/main/main.py

sudo rm /fstop-python-folderimagedetection/ || echo "Image detection not installed yet, not reinstalling but installing."
sudo git clone https://github.com/F-Stop-Technologies/yolov8-fstop /fstop-python-folderimagedetection/
sudo wget -O /fstop-python-folderimagedetection/recognize.py https://raw.githubusercontent.com/F-Stop-Technologies/yolov8-imageobjectdetection/main/detect.py
sudo wget -O /fstop-python-folderimagedetection/yolov8n.pt https://github.com/ultralytics/assets/releases/download/v0.0.0/yolov8n.pt

sudo apt install -y python3-torch python3-tk python3-numpy python3-torchvision

sudo -u $USER pip3 install openai duckduckgo3 requests python-dotenv colorama --break-system-packages
sudo -u $USER pip3 install opencv-python --break-system-packages
sudo -u $USER pip3 install ultralytics --break-system-packages || echo "Error installing ultralytics, you won't be able to use image detection!"

sudo mkdir /fstop-spacy-nlp/
sudo wget -O /fstop-spacy-nlp/spacy-nlp.py https://raw.githubusercontent.com/F-Stop-Technologies/spacy-nlp/main/spacy-nlp.py
sudo -u $USER pip3 install spacy --break-system-packages || echo "Error installing spacy, you will not be able to use nlp!"
python -m spacy download en_core_web_sm || echo "Error installing spacy en_core_web_sm, you will not be able to use nlp!"
python -m spacy download en || echo "Error installing spacy en, you will not be able to use nlp!"

rm -rf /home/tester/.mozilla

rm -rf /linux-live
git clone https://github.com/Tomas-M/linux-live /linux-live
cd /linux-live
chmod +x build
echo "Building F-Stop Mint (This'll take awhile!)"
./build
echo "Building iso (this may take a minute!)"
sudo bash /tmp/gen_linux_iso.sh

echo "Generated!"
