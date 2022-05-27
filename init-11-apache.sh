#!/bin/bash


echo "======================================="
echo "== Setup Apache"
echo "======================================="

sudo apt install -y apache2

# Disable the default Apache test site
#a2dissite 000-default.conf
