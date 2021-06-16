#!/bin/bash
cd /
mkdir final
sudo chmod +x final
sudo chmod 777 final
sudo chmod a+w final
mkdir lokum
sudo chmod +x lokum
sudo chmod 777 lokum
sudo chmod a+w lokum
apt install unzip
sudo apt update
apt-get install -y python3 python3-pip
sudo apt-get install screen git && curl https://rclone.org/install.sh | sudo bash
wget https://github.com/lkmnyldrm123/desktop-tutorial/raw/main/123.zip
unzip 123.zip
cd 123 && sudo pip3 install -r requirements.txt
cd /root/.config
mkdir rclone
cd /root/.config/rclone
wget https://raw.githubusercontent.com/lkmnyldrm123/desktop-tutorial/main/rclone.conf
cd /
wget https://raw.githubusercontent.com/lkmnyldrm123/desktop-tutorial/main/acc.json
wget https://raw.githubusercontent.com/lkmnyldrm123/desktop-tutorial/main/rm.sh
chmod 777 rm.sh
chmod a+w rm.sh
chmod +x rm.sh
screen -dm -S "dmount" ./rm.sh
cd /123
wget https://raw.githubusercontent.com/lkmnyldrm123/desktop-tutorial/main/aw.sh
chmod 777 autorclone.py
chmod a+w autorclone.py
chmod +x autorclone.py
chmod 777 aw.sh
chmod a+w aw.sh
chmod +x aw.sh
screen -dm -S "deniz" ./aw.sh