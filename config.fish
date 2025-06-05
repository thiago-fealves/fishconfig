set -U fish_greeting
starship init fish | source
fzf --fish | source
zoxide init fish | source
set -gx EDITOR nvim
set -gx VISUAL nvim

bind \cf fzf-cd-widget
alias vimconfig="nvim ~/.config/nvim"
alias ls="eza"
alias vi="nvim"
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias fastfetch="fastfetch --logo-color-1 cyan --color-keys cyan --color-title blue"
alias kali="docker start -ai kali-pentest"

function temple
    cd ~/Documents/Oracle\'s\ Temple
end
function neofetch
  fastfetch --logo-type kitty-direct --logo ~/.config/makotoicon.png --logo-width 45 --logo-height 20
end
function github
  cd ~/Documents/GitHub
end

set PATH $PATH /Users/oracleofdelfos/.local/bin
set -x LS_COLORS "di=1;94:ln=1;36:so=1;35:pi=1;33:ex=1;97:bd=1;38;5;110:cd=1;38;5;110:su=1;31:sg=1;31:tw=1;34:ow=1;34:fi=38;5;67:*.md=38;5;67:*.c=1;36:*.rb=1;36:*.ele=1;36:*.el=1;36:*.ipynb=1;36:*.py=1;36:*.cpp=1;36:*.lua=1;36:*.log=38;5;:*.str=92:"

if status is-interactive
    if not set -q TMUX
        if not tmux has-session -t Terminal 2> /dev/null
            tmux new-session -d -s Terminal
        end

        tmux attach-session -t Terminal
    end
end
