function search --wraps='sudo pacman -Ss' --wraps='sudo yay remove' --description 'alias search=sudo pacman -Ss'
  sudo pacman -Ss $argv; 
end
