#!/bin/sh   

cd /server_1/garrysmod/gamemodes
wget https://github.com/andrewtheis/prophunt/archive/master.zip
unzip prophunt-master.zip
mv prophunt-master prophunt
cd ~
cd TTT-Scripts
./run_prop_hunt.sh
