#!/bin/bash

sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y git wget wine dosbox flatpak snapd python3 psmisc python3-pip firmware-linux-nonfree firmware-misc-nonfree
sudo wget -O /usr/bin/node-get https://raw.githubusercontent.com/F-Stop-Technologies/node-get/main/node-get
sudo chmod +x /usr/bin/node-get

# Check if NVIDIA card is present
echo "Check for NVIDIA card..."
if lspci | grep -i NVIDIA; then
  echo "NVIDIA card detected. Installing closed-source NVIDIA drivers..."
  sudo apt install -y nvidia-driver
else
  echo "No NVIDIA card detected. Not installing NVIDIA drivers..."
fi

echo "sudo node-get install net.brinkervii.grapejuice" > /usr/bin/roblox-easyinstall
chmod +x /usr/bin/roblox-easyinstall

sudo rm /fstop-wallpapers/  || echo "Wallpapers not installed yet, not removing."
sudo git clone https://github.com/F-Stop-Technologies/wallpapers /fstop-wallpapers/
sudo chmod -R 777 /fstop-wallpapers

sudo mkdir /fstop-python-nodefun/
sudo wget -O /fstop-python-nodefun/duckbart.py https://raw.githubusercontent.com/F-Stop-Technologies/duckbart-fstop/main/main.py
sudo wget -O /fstop-python-nodefun/blog-gen.py https://raw.githubusercontent.com/F-Stop-Technologies/blogger_openai_fstop/main/main.py

sudo rm /fstop-python-folderimagedetection/ || echo "Image detection not installed yet, not removing."
sudo git clone https://github.com/F-Stop-Technologies/yolov8-fstop /fstop-python-folderimagedetection/
sudo wget -O /fstop-python-folderimagedetection/recognize.py https://raw.githubusercontent.com/F-Stop-Technologies/yolov8-imageobjectdetection/main/detect.py
sudo wget -O /fstop-python-folderimagedetection/yolov8n.pt https://github.com/ultralytics/assets/releases/download/v0.0.0/yolov8n.pt

sudo apt install -y python3-torch python3-tk python3-numpy python3-torchvision

sudo -u $USER pip3 install openai duckduckgo3 requests python-dotenv colorama --break-system-packages
sudo -u $USER pip3 install opencv-python --break-system-packages
sudo -u $USER pip3 install ultralytics --break-system-packages || echo "Error installing ultralytics, you won't be able to use image detection!"


#!/bin/bash

read -p "Do you want to install XFCE? Our systems were made for this DE! (y/n) " response

if [ "$response" == "y" ]; then
    sudo apt-get install xfce4
else
    echo "Ok, let's skip the XFCE for now."
fi


echo "Installed!"
