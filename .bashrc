#
# ~/.bashrc
#

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

# Auto-launch Fish shell if not already inside it
if [ -x /usr/bin/fish ] && [ "$SHELL" != "/usr/bin/fish" ]; then
    exec fish
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias sandbox="$HOME/.local/bin/sandbox"
