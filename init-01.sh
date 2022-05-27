#!/bin/bash

echo "Start"


echo "==============================="
echo "== Setup git credentials"
echo "==============================="
git config --global user.email "radogor@gmail.com"
git config --global user.name "SergRachevsky"
git config --global credential.helper store


echo "==============================="
echo "== Copy configuration files"
echo "==============================="

sudo cp ./files/etc/apt/apt.conf.d/01norecommend /etc/apt/apt.conf.d/


echo "==============================="
echo "== Install useful packages"
echo "==============================="
sudo apt install --yes --no-install-recommends $(cat pkglist.txt)


echo "==============================="
echo "== Copy configuration files"
echo "==============================="

sudo cp ./files/usr/share/mc/syntax/Syntax /usr/share/mc/syntax/
sudo cp ./files/usr/share/mc/syntax/df.syntax /usr/share/mc/syntax/

mkdir -p ~/.config/mc
cp ./files/home/.config/mc/hotlist ~/.config/mc/
cp ./files/home/.selected_editor ~/

sudo update-alternatives --set editor /usr/bin/mcedit



echo "Stop"
