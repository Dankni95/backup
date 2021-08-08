function backup 
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
  cd ~/Documents/github/backup
  fisher install  $cat < fish_plugins
end
