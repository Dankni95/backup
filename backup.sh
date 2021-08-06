#!/bin/bash 

function copyBash {
         ##copy .bashrc
            cp ~/.bashrc ~/Documents/github/backup
            echo "Bashrc copied"
}  

function copyFishFunctions {
        ## copy functions/aliases
    cp -r ~/.config/fish/functions ~/Documents/github/backup   
            echo "fish function copied"
}  

function copyFishPlugins {
    #copy fish plugins
    cp -r ~/.config/fish/fish_plugins ~/Documents/github/backup
   
            echo "fish plugins copied"
} 

function copyFishVar {
    #copy fish plugins
    cp -r ~/.config/fish/fish_variables ~/Documents/github/backup
     cp -r ~/.config/fish/config.fish ~/Documents/github/backup
    echo "fish variables copied"
} 


function exportAurPackages {
#   #get AUR packages 
     pacman -Qqme > packagesAUR.txt
     echo "Aur packages exported"
} 

function exportPacmanPackages {
#   #get AUR packages 
    pacman -Qqe > packagesPacman.txt
     echo "pacman packages exported"
} 

function exportConfig {
## run config backup
    konfsave s
    konfsave a
    cp -r ~/daniel.konfsave.zip ~/Documents/github/backup
     echo "config exported"
} 

function exportGrub {
## run grub backup
    cp -r /etc/default/grub  ~/Documents/github/backup
    cp -r /etc/grub.d/30_os-prober ~/Documents/github/backup
     echo "GRUB exported"
} 

function exportUlancher {
## run grub backup
    mkdir -p ulauncher-config
    cp -r ~/.config/ulauncher  ~/Documents/github/backup/ulauncher-config/
     echo "Ulancher exported"
} 



function exportNPM {
## run config backup
    npm list --global --parseable --depth=0 | sed '1d' | awk '{gsub(/\/.*\//,"",$1); print}' > npmfile.txt 
     echo "npm global packages exported"
} 

function finish {
## run config backup
     notify-send "The backup just ran successfully"
} 





copyBash
copyFishFunctions
copyFishPlugins
copyFishVar
exportPacmanPackages
exportAurPackages
exportConfig
exportGrub
exportUlancher
finish


