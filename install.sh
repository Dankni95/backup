#!/bin/bash


function installPacmanPackages {           
##install pacman packages 
yes | sudo pacman -Syyuu && sudo pacman -S --needed - < $PWD/packagesPacman.txt
     echo " installed Pacman yayeeeeeeeeet"
}

function installNpm {           
##install npm 
     yes | sudo pacman -S npm 
     echo " installed npm yayeeeeeeeeet"
}

function yay {
##install yay
      yes | sudo pacman -S yay
            echo "YAY yayeeeeeeeeet"
} 


function installNpmPackages { 
##install npm packages
     xargs npm install --global < npmfile.txt
            echo "Npm packages yayeeeeeeeeeted"
} 


function installAurPackages {           
## install AUR packages 
yay -S $cat - < $PWD/packagesAUR.txt --answeredit All --save
     echo " installed AUR yayeeeeeeeeet"
} 


function fisher {           
## installing fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
            echo "fisher yayeeeeeeeeet"
} 

function fishPlugins {           
## fish plugins 
fisher update  $cat < $PWD/fish_plugins
     echo "yayeted fisher install plugins overtrøtt yayeeeeeeeeet"
} 

function importGrub {
## run grub backup
yes | sudo pacman -S grub 
sudo mv -f $PWD/grub /etc/default/grub && mv -f $PWD/30_os-prober /etc/grub.d/30_os-prober
sudo update-grub
     echo "config imported"
} 


installPacmanPackages
installAurPackages
installNpm
installNpmPackages
yay
fisher
fishPlugins
importGrub







