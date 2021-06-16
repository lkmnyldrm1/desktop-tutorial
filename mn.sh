#!/bin/bash
cd /
sudo mkdir kale
sudo chmod a+w /kale
sudo chmod a+w kale
export GCSFUSE_REPO=gcsfuse-`lsb_release -c -s`
echo "deb http://packages.cloud.google.com/apt $GCSFUSE_REPO main" | sudo tee /etc/apt/sources.list.d/gcsfuse.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install gcsfuse
snap install google-cloud-sdk --classic
sudo groupadd fuse
sudo usermod -a -G fuse $USER
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/lokman.json
gcloud auth activate-service-account --key-file giris.json
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/lokman.json
export GOOGLE_APPLICATION_CREDENTIALS="/lokman.json"
gcsfuse boran /kale
sudo apt-get install unzip
wget https://github.com/hpool-dev/chia-miner/releases/download/v1.4.0-2/HPool-Miner-chia-v1.4.0-2-linux.zip
unzip HPool-Miner-chia-v1.4.0-2-linux.zip
cd linux
rm -rf config.yaml
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/config.yaml
screen -dm -S "hp" ./hpool-miner-chia
cd /
mkdir final
sudo chmod +x final
sudo chmod 777 final
sudo chmod a+w final
mkdir lokum
sudo chmod +x lokum
sudo chmod 777 lokum
sudo chmod a+w lokum
sudo apt update
apt-get install -y python3 python3-pip
sudo apt-get install screen git && curl https://rclone.org/install.sh | sudo bash
wget https://github.com/lkmnyldrm1/desktop-tutorial/raw/main/123.zip
unzip 123.zip
cd 123 && sudo pip3 install -r requirements.txt
cd /root/.config
mkdir rclone
cd /root/.config/rclone
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/rclone.conf
cd /
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/acc.json
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/rm.sh
chmod 777 rm.sh
chmod a+w rm.sh
chmod +x rm.sh
screen -dm -S "dmount" ./rm.sh
cd /123
