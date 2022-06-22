#!/bin/bash
cp -v .xinitrc /home/torben
cp -v .gitconfig /home/torben
cp -v .bashrc /home/torben
mkdir -p /home/torben/.config
cp -v -r .config /home/torben/.config
