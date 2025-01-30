if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_greeting
alias nvim=/snap/bin/nvim
export EDITOR=/snap/bin/nvim
starship init fish | source
