#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export HISTCONTROL='ignoreboth'
export HISTIGNORE='l:ls:cd:exit'
export PATH=~/.local/bin:$PATH

alias ls='ls --color=auto'
alias pac="sudo pacman"
alias nvim="lvim"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
