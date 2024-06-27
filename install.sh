#!/bin/sh

#dependencies
sudo apt install -y libx11-dev libxft-dev libxinerama-dev build-essential

#clone repo
echo simple-wallpaper alfath-dwm alfath-dwmstatus alfath-st1 alfath-dmenu fonts-cool | xargs -n1 | xargs -I{} git clone https://github.com/alfathmuqoddas/{}

#install dwm
cd alfath-dwm
sudo make clean install

#install dwm-status
cd ../alfath-dwmstatus
sudo make clean install

#install st
cd ../alfath-st1
sudo make clean install

#install dmenu
cd ../alfath-dmenu
sudo make clean install

#copy font
sudo cp -r ../fonts-cool/* /usr/share/fonts/

#install some apps
sudo apt install -y lightdm lightdm-gtk-greeter thunar xfce4-settings lxappearance

#install themes and icons
sudo apt install -y materia-gtk-theme papirus-icon-theme

#enable lightdm
sudo systemctl enable lightdm
sudo systemctl start lightdm

