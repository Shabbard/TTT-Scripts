#!/bin/bash
cd ~
mkdir bin
cd bin
wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz

sudo apt -y install lib32stdc++6
./steamcmd.sh +login anonymous +quit

cd ~
wget http://pastebin.com/raw/CRmMbJQA -O ./update_gmod.sh
chmod +x ./update_gmod.sh

sudo apt -y install dos2unix    
dos2unix ./update_gmod.sh
./update_gmod.sh

sudo apt -y install lib32tinfo5

cd ~/TTT-Scripts
gpg -d run_ttt.sh.gpg | bash