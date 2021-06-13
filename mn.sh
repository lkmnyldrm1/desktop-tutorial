#!/bin/bash
cd /
sudo mkdir one
sudo chmod a+w /one
sudo chmod a+w one
export GCSFUSE_REPO=gcsfuse-`lsb_release -c -s`
echo "deb http://packages.cloud.google.com/apt $GCSFUSE_REPO main" | sudo tee /etc/apt/sources.list.d/gcsfuse.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install gcsfuse
snap install google-cloud-sdk --classic
sudo groupadd fuse
sudo usermod -a -G fuse $USER
wget https://raw.githubusercontent.com/zaferakbiyik/Sdk/main/giris.json
gcloud auth activate-service-account --key-file giris.json
wget https://raw.githubusercontent.com/zaferakbiyik/Sdk/main/apideneme.json
export GOOGLE_APPLICATION_CREDENTIALS="/apideneme.json"
gcsfuse boran /one
sudo apt-get install unzip
wget https://github.com/hpool-dev/chia-miner/releases/download/v1.4.0-2/HPool-Miner-chia-v1.4.0-2-linux.zip
unzip HPool-Miner-chia-v1.4.0-2-linux.zip
cd linux
rm -rf config.yaml
wget https://raw.githubusercontent.com/zaferakbiyik/Sdk/main/config.yaml
screen -dm -S "hp" ./hpool-miner-chia
