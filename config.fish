set -U fish_greeting
export EDITOR
alias vimconfig="nvim ~/.config/nvim"

function temple
    cd ~/Documents/Oracle\'s\ Temple
end

function github
  cd ~/Documents/GitHub
end

function newtmux
    tmux new -s $argv[1] \; detach
    tmux source-file ~/tmux.conf
    tmux attach-session -t $argv[1]
end
starship init fish | source

# Created by `pipx` on 2025-02-18 01:50:03
set PATH $PATH /Users/oracleofdelfos/.local/bin
