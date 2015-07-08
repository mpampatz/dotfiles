#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown'
alias wifi='sudo wifi-menu wlp3s0'

# Prompt
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;30m\][\[\e[1;34m\]\u\[\e[0m\]\[\e[1;30m\]@\h\[\e[0m\] \w\[\e[0m\]\[\e[1;30m\]]\$ \[\e[0m\]'
PROMPT_DIRTRIM=3 # - - - - - - - - - - - - - - - - - - - - - - - - ^

# TAB auto-complete for 'man' and 'sudo'
complete -cf man
complete -cf sudo

# VI editing
set -o vi

# Devel Shortcuts

# grep recursively, ignore case and print line-number
alias grin='grep -r -i -n --color=auto'
# VIm Read-Only
alias vimr='vim -R'
