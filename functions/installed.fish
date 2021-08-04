function installed --wraps='sudo pacman Qr' --wraps='sudo pacman Qm' --wraps='sudo pacman -Qm' --description 'alias installed=sudo pacman -Qm'
  sudo pacman -Qm $argv
end
