# Defined interactively
function mkgit
    go github
    mkdir $argv
    cd "$argv"
end
