sudo apt update
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install git wget wine dosbox flatpak python3 python3-pip
sudo wget -O /usr/bin/node-get https://raw.githubusercontent.com/F-Stop-Technologies/node-get/main/node-get
sudo chmod +x /usr/bin/node-get
sudo wget -O /tmp/sid-do-sir.sh https://raw.githubusercontent.com/F-Stop-Technologies/lmde-to-sid/main/lmde2sid.sh
sudo bash /tmp/sid-do-sir.sh
sudo mkdir /fstop-python-nodefun/
sudo wget -O /fstop-python-nodefun/duckbart.py https://raw.githubusercontent.com/F-Stop-Technologies/duckbart-fstop/main/main.py
sudo wget -O /fstop-python-nodefun/blog-gen.py https://raw.githubusercontent.com/F-Stop-Technologies/blogger_openai_fstop/main/main.py
pip3 install openai duckduckgo3 requests python-dotenv colorama
