set -U fish_greeting
export EDITOR
alias vimconfig="nvim ~/.config/nvim"
alias ls="eza"
alias fastfetch="fastfetch --logo-color-1 cyan --color-keys cyan --color-title blue"

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

set PATH $PATH /Users/oracleofdelfos/.local/bin
set -x LS_COLORS "di=1;94:ln=1;36:so=1;35:pi=1;33:ex=1;97:bd=1;38;5;110:cd=1;38;5;110:su=1;31:sg=1;31:tw=1;34:ow=1;34:fi=38;5;67:*.md=38;5;67:*.c=1;36:*.rb=1;36:*.ele=1;36:*.el=1;36:*.ipynb=1;36:*.py=1;36:*.log=38;5;67"
