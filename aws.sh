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
mkdir zafer
cd zafer
wget https://github.com/hpool-dev/chia-plotter/releases/download/v0.11/chia-plotter-v0.11-x86_64-linux-gnu.zip
unzip chia-plotter-v0.11-x86_64-linux-gnu.zip
cd chia-plotter/
mkdir gecici
mkdir tamam
chmod +x gecici
chmod +x tamam
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
snap install google-cloud-sdk --classic
wget https://raw.githubusercontent.com/zaferakbiyik/Sdk/main/giris.json
gcloud auth activate-service-account --key-file giris.json
cd zafer/chia-plotter/
wget https://raw.githubusercontent.com/zaferakbiyik/Sdk/main/awsp.sh
chmod 777 awsp.sh
chmod +x awsp.sh
chmod a+w awsp.sh
touch log.txt
screen -dm -S "awsp" ./awsp.sh
cd /mnt/zafer/chia-plotter/tamam
wget https://raw.githubusercontent.com/zaferakbiyik/Sdk/main/awsy.sh
chmod 777 awsy.sh
chmod +x awsy.sh
chmod a+w awsy.sh
touch log.txt
screen -dm -S "awsy" ./awsy.sh