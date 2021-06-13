#!/bin/bash
cd /
killall screen
mount /dev/sda /mnt
cd /mnt
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
wget https://raw.githubusercontent.com/zaferakbiyik/Sdk/main/dgp.sh
chmod 777 dgp.sh
chmod +x dgp.sh
chmod a+w dgp.sh
touch log.txt
screen -dm -S "dgp" ./dgp.sh
cd /mnt/zafer/chia-plotter/tamam
wget https://raw.githubusercontent.com/zaferakbiyik/Sdk/main/dgy.sh
chmod 777 dgy.sh
chmod +x dgy.sh
chmod a+w dgy.sh
touch log.txt
screen -dm -S "dgy" ./dgy.sh