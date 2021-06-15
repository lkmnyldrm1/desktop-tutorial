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
rclone mount LOkum:/ /root/klasor --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 16M --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --fast-list --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file "/root/acc.json"