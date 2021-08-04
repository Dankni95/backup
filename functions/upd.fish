function upd --wraps='sudo pacman -Syyuu' --description 'alias upd=sudo pacman -Syyuu'
  sudo pacman -Syyuu $argv; 
end
