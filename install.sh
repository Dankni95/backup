#!/bin/bash
function moveFiles {
## run grub backup
if [ $PWD != "/home/daniel/Documents/github/backup" ]; then
    mkdir -p  ~/Documents/github/  && mv $PWD/ ~/Documents/github/ && echo "Github folder created"
    cd ~/Documents/github/backup 
else
    echo "Already in projects folder"
fi
} 

function installPacmanPackages {           
##install pacman packages & update mirrorlist
yes | sudo pacman-mirrors --fasttrack && sudo pacman -Syyu
yes | sudo pacman -Syyuu && sudo pacman -S --needed - < packagesPacman.txt
yes | sudo pacman -S --needed base-devel
     echo " installed Pacman yayeeeeeeeeet"
}

function installKonf {           
##install konf 
     python -m pip install konfsave
     echo " installed konf"
}

function installNpm {           
##install npm 
     yes | sudo pacman -S --needed npm 
     echo " installed npm yayeeeeeeeeet"
}

function yay {
##install yay
      yes | sudo pacman -S --needed yay
            echo "YAY yayeeeeeeeeet"
} 


function installNpmPackages { 
##install npm packages
     xargs sudo npm install --global < npmfile.txt
            echo "Npm packages yayeeeeeeeeeted"
} 


function installAurPackages {           
## install AUR packages 
yay -S - < packagesAUR.txt
     echo " installed AURs"
} 

function fish {           
## install fish and call
      yay -S fish && fish    
} 

function fisher {           
## installing fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
            echo "fisher yayeeeeeeeeet"
} 

function fishPlugins {           
## fish plugins 
fisher install  $cat < fish_plugins
     echo "yayeted fisher install plugins overtrøtt yayeeeeeeeeet"
} 

function importGrub {
## import grub backup
yes | sudo pacman -S grub 
sudo mv -f grub /etc/default/ && sudo mv -f 30_os-prober /etc/grub.d/
sudo update-grub
     echo "grub imported"
} 

function moveUlauncher {
## import ulancher config
 mv -f /ulauncher-config/ulancher/* /home/daniel/.config/ulauncher/
     echo "ulancher config imported"
}

function importBashrc {
## import bashrc
mv -f .bashrc ~/

     echo "bashrc imported"
} 

function fish {
yay -S fish

     echo "bashrc imported"
} 



function installUlauncher {
## import bashrc
cd ~/ && git clone https://aur.archlinux.org/ulauncher.git && cd ulauncher && makepkg -is && cd ~/Documents/github/backup 
     echo "ulancher installed"
}


moveFiles
importBashrc
installPacmanPackages
yay
installAurPackages
installNpm
installNpmPackages
fish
fisher
fishPlugins
importGrub
installKonf
installUlauncher
moveUlauncher






