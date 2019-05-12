#!/bin/bash
cd ~
mkdir bin
cd bin
wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
if ./steamcmd.sh +login anonymous +quit then
    echo "Success"
else
    echo "Failure"
    sudo apt install lib32stdc++6
    ./steamcmd +login anonymous +quit
fi

cd ~
wget http://pastebin.com/raw/CRmMbJQA -O ./update_gmod.sh
chmod +x ./update_gmod.sh

if dos2unix ./update_gmod.sh then
    echo "Success"
else
    echo "Failure"
    sudo apt install dos2unix
    dos2unix ./update_gmod.sh
fi
./update_gmod.sh

./run_ttt.sh