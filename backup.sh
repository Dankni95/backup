#!/bin/bash 
function copyBash {
         ##copy .bashrc
            cp ~/.bashrc ~/Documents/github/scripting
            echo "Bashrc copied"
}  

function copyFishFunctions {
        ## copy functions/aliases
    cp -r ~/.config/fish/functions /home/daniel/Documents/github/scripting   
            echo "fish function copied"
}  

function copyFishPlugins {
    #copy fish plugins
    cp -r ~/.config/fish/fish_plugins /home/daniel/Documents/github/scripting
   
            echo "fish plugins copied"
} 

function copyFishVar {
    #copy fish plugins
    cp -r ~/.config/fish/fish_variables /home/daniel/Documents/github/scripting
     cp -r ~/.config/fish/config.fish /home/daniel/Documents/github/scripting
    echo "fish variables copied"
} 


function exportAurPackages {
#   #get AUR packages 
    sudo  pacman -Qqme > packagesAUR.txt
     echo "pacman packages exported"
} 

function exportPacmanPackages {
#   #get AUR packages 
    sudo pacman -Qqe > packagesPacman.txt
     echo "pacman packages exported"
} 

function exportConfig {
## run config backup
    konfsave s
    konfsave a
    cp /home/daniel/daniel.konfsave.zip ~/Documents/github/scripting
     echo "config exported"
} 


function exportNPM {
## run config backup
    npm list --global --parseable --depth=0 | sed '1d' | awk '{gsub(/\/.*\//,"",$1); print}' > npmfile.txt 
     echo "nom global packages exported"
} 





copyBash
copyFishFunctions
copyFishPlugins
copyFishVar
exportPacmanPackages
exportAurPackages
exportConfig


