#!/bin/bash
sudo apt install -y i3 zsh vim feh rofi git

for dir in *
do
    cd $(dir)
    ./setup.sh
    cd ..
done
