#!/bin/bash


echo "======================================="
echo "== Setup python"
echo "======================================="

sudo apt install -y python2

sudo add-apt-repository -y ppa:deadsnakes/ppa

sudo apt update -y
sudo apt install -y python3.9

sudo update-alternatives --install /usr/bin/python3 python /usr/bin/python3.9 1
sudo update-alternatives --install /usr/bin/python3 python /usr/bin/python3.8 2

sudo update-alternatives --set python /usr/bin/python3.9

sudo apt install -y python3-pip
sudo python3 -m pip install --upgrade pip

sudo ln -sv /usr/bin/python3.9 /usr/bin/python

sudo ln -s /usr/lib/python3/dist-packages/apt_pkg.cpython-38-x86_64-linux-gnu.so /usr/lib/python3/dist-packages/apt_pkg.so