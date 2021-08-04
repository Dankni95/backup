function aur --wraps='yay -a' --description 'alias aur=yay -a'
  yay -a $argv; 
end
