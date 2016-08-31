#!/bin/sh
sudo apt-get -y remove --purge wolfram-engine penguinspuzzle scratch dillo squeak-vm squeak-plugins-scratch sonic-pi idle idle3 netsurf-gtk netsurf-common minecraft-pi nodered geany bluej greenfoot libreoffice* claws-mail

sudo apt-get autoremove
sudo apt-get clean

rm -rf /home/pi/python_games
