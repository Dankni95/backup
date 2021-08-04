function list --wraps='sudo pacman Qm' --wraps='sudo pacman -Qm' --description 'alias list=sudo pacman -Qm'
  sudo pacman -Qm $argv; 
end
