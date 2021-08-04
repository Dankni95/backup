function unalias --wraps='functions -e' --description 'alias unalias=functions -e'
  cd ~/.config/fish/functions && rm "$argv.fish";
end
