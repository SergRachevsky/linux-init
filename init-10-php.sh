#!/bin/bash


echo "======================================="
echo "== Setup PHP"
echo "======================================="

sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php7.4
