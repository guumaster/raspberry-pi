#!/usr/bin/env bash

cd /tmp
wget https://github.com/jjhelmus/berryconda/releases/download/v2.0.0/Berryconda3-2.0.0-Linux-armv7l.sh

chmod +x Berryconda3-2.0.0-Linux-armv7l.sh
./Berryconda3-2.0.0-Linux-armv7l.sh

echo "export PATH=\"/home/pi/berryconda3/bin:$PATH\"" >> $HOME/.profile

source $HOME/.profile

#After reboot or change PATH
conda update conda
pip install --upgrade pip

