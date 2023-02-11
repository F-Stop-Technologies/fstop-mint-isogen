sudo apt update
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y git wget wine dosbox flatpak python3 python3-pip

sudo wget -O /usr/bin/node-get https://raw.githubusercontent.com/F-Stop-Technologies/node-get/main/node-get
sudo chmod +x /usr/bin/node-get

sudo wget -O /tmp/sid-do-sir.sh https://raw.githubusercontent.com/F-Stop-Technologies/lmde-to-sid/main/lmde2sid.sh
sudo bash /tmp/sid-do-sir.sh

sudo mkdir /fstop-python-nodefun/
sudo git clone https://github.com/F-Stop-Technologies/yolov8-fstop /fstop-python-folderimagedetection/
sudo wget -O /fstop-python-nodefun/duckbart.py https://raw.githubusercontent.com/F-Stop-Technologies/duckbart-fstop/main/main.py
sudo wget -O /fstop-python-nodefun/blog-gen.py https://raw.githubusercontent.com/F-Stop-Technologies/blogger_openai_fstop/main/main.py
sudo wget -O /fstop-python-folderimagedetection/recognize.py https://raw.githubusercontent.com/F-Stop-Technologies/yolov8-imageobjectdetection/main/detect.py
sudo wget -O /fstop-python-folderimagedetection/yolov8n.pt https://github.com/ultralytics/assets/releases/download/v0.0.0/yolov8n.pt

sudo apt install -y python3-torch python3-tk python3-numpy python3-torchvision
pip3 install openai duckduckgo3 requests python-dotenv colorama
pip3 install opencv-python
pip3 install ultralytics || echo "Error installing ultralytics, you won't be able to use image detection!"
echo "Installed! Rebooting in 30 seconds.... (CTRL+Z to abort)"
bash -c "sleep 30; shutdown -r now"
