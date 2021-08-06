#!/bin/bash
function moveFiles {
## run grub backup
if [ $PWD != "/home/daniel/Documents/github/backup" ]; then
    mkdir -p  ~/Documents/github/backup  && mv $PWD/ ~/Documents/github/backup && echo "Github folder created"
else
    echo "Already in projects folder"
fi
} 

function installPacmanPackages {           
##install pacman packages & update mirrorlist
yes | sudo pacman-mirrors --fasttrack && sudo pacman -Syyu
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
## import grub backup
yes | sudo pacman -S grub 
sudo mv -f $PWD/grub /etc/default/ && sudo mv -f $PWD/30_os-prober /etc/grub.d/
sudo update-grub
     echo "grub imported"
} 

function importBashrc {
## import bashrc
mv -f $PWD/.bashrc ~/

     echo "bashrc imported"
} 


function installUlancher {
## import bashrc
 git clone https://aur.archlinux.org/ulauncher.git && cd ulauncher && makepkg -is 
     echo "ulancher installed"
}


moveFiles
importBashrc
installPacmanPackages
installAurPackages
installNpm
installNpmPackages
yay
fisher
fishPlugins
importGrub
installUlancher







