#!/bin/bash


function installPacmanPackages {           
##install pacman packages 
pacman -S --needed - < packagesPacman.txt
     echo " installed Pacman yayeeeeeeeeet"
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
yay -S $cat - < packagesAUR.txt --answeredit All --save
     echo " installed AUR yayeeeeeeeeet"
} 


function fisher {           
## installing fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
            echo "fisher yayeeeeeeeeet"
} 

function fishPlugins {           
## fish plugins 
fisher update  $cat < fish_plugins
     echo "yayeted fisher install plugins overtrøtt yayeeeeeeeeet"
} 



installPacmanPackages
installAurPackages
installNpmPackages
yay
fisher
fishPlugins







