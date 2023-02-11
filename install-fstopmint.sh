sudo apt update
sudo apt install git wget
sudo wget -O /usr/bin/node-get https://raw.githubusercontent.com/F-Stop-Technologies/node-get/main/node-get
sudo chmod +x /usr/bin/node-get
sudo wget -O /tmp/sid-do-sir.sh https://raw.githubusercontent.com/F-Stop-Technologies/lmde-to-sid/main/lmde2sid.sh
sudo bash /tmp/sid-do-sir.sh
