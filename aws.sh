#!/bin/bash
sudo su
sudo chmod 777 aws.sh
chmod +x aws.sh
chmod a+w aws.sh
cd /
killall screen
cd /home/ubuntu
rm -rf *
apt install unzip
mkdir lokman
cd lokman
wget https://github.com/hpool-dev/chia-plotter/releases/download/v0.11/chia-plotter-v0.11-x86_64-linux-gnu.zip
unzip chia-plotter-v0.11-x86_64-linux-gnu.zip
cd chia-plotter/
mkdir temp
mkdir tohum
chmod +x temp
chmod +x tohum
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
snap install google-cloud-sdk --classic
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/lokman.json
gcloud auth activate-service-account --key-file lokman.json
cd lokman/chia-plotter/
wget https://raw.githubusercontent.com/lkmnyldrm1/desktop-tutorial/main/awsp.sh
chmod 777 awsp.sh
chmod +x awsp.sh
chmod a+w awsp.sh
touch log.txt
screen -dm -S "awsp" ./awsp.sh
cd /mnt/lokman/chia-plotter/tohum
