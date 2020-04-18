#!/bin/sh   

sudo apt install unzip -y

cd ~
cd server_1/garrysmod/gamemodes
wget https://github.com/andrewtheis/prophunt/archive/master.zip
unzip master.zip
mv prophunt-master prophunt
rm master.zip
cd ~
cd TTT-Scripts
./run_prop_hunt.sh