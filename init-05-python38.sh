#!/bin/bash


echo "======================================="
echo "== Setup python"
echo "======================================="

sudo add-apt-repository -y ppa:deadsnakes/ppa

sudo apt update -y
sudo apt install -y python3.8

sudo update-alternatives --install /usr/bin/python3 python /usr/bin/python3.8 1
sudo update-alternatives --install /usr/bin/python3 python /usr/bin/python3.6 2

sudo update-alternatives --set python /usr/bin/python3.8


sudo apt install -y python3-pip
sudo python3 -m pip install --upgrade pip

sudo apt remove python3-apt
sudo apt autoremove
sudo apt autoclean
sudo apt install python3-apt
