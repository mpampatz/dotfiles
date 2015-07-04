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
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;30m\][\[\e[1;34m\]\u\[\e[0m\]\[\e[1;30m\]@\h\[\e[0m\] \W\[\e[0m\]\[\e[1;30m\]]\$ \[\e[0m\]'

# tab auto-complete for man and sudo
complete -cf man
complete -cf sudo

# vi editing
set -o vi

# DEVEL SHORTCUTS

# grep recursively, ignore case and print line number
alias grin='grep -r -i -n --color=auto'

# vim read-only
alias vimr='vim -R' 