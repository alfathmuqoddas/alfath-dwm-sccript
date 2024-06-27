#!/bin/sh

#initialize dwm
sudo cp alfath-dwm/dwm.desktop /usr/share/xsessions/
mkdir -p /home/${USER}/.dwm
cp alfath-dwm/autostart.sh /home/${USER}/.dwm/

#start lightdm
sudo systemctl enable lightdm
sudo systemctl start lightdm
