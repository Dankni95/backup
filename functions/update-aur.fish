function update-aur --wraps='pamac checkupdates -a' --description 'alias update-aur=pamac checkupdates -a'
  pamac checkupdates -a $argv; 
end
