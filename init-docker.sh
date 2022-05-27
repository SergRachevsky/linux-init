#!/bin/bash


echo "======================================="
echo "== Setup docker"
echo "======================================="

sudo apt install -y docker.io

sudo usermod -aG docker serg

source ~/.bashrc
