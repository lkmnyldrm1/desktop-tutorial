#!/bin/bash
apt install unzip
cd /root
apt-get install -y python3 python3-pip
sudo apt-get install screen git && curl https://rclone.org/install.sh | sudo bash
wget https://github.com/lkmnyldrm1/desktop-tutorial/raw/main/lokum.zip
unzip lokum.zip
cd AutoRclone && sudo pip3 install -r requirements.txt
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/rc.sh
screen -dm -S "te" ./rc.sh
screen -S te -X kill
cd /root/.config/rclone/
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/rclone.conf
cd /root
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/acc.json
mkdir klasor
sudo chmod +x klasor
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/rmount.sh
screen -dm -S "drivemount" ./test.sh