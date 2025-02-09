set -U fish_greeting
export EDITOR
alias vimconfig="nvim ~/.config/nvim"

function temple
    cd ~/Documents/Oracle\'s\ Temple
end

function newtmux
    tmux new -s $argv[1] \; detach
    tmux source-file ~/tmux.conf
    tmux attach-session -t $argv[1]
end

starship init fish | source
