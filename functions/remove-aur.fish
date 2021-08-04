function remove-aur --wraps='yay -Rns' --description 'alias remove-aur=yay -Rns'
  yay -Rns $argv; 
end
