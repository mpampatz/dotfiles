#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --show-control-chars -h'
alias grep='grep --color=auto'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown'

# Prompt
#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1;30m\][\[\e[1;34m\]\u\[\e[0m\]\[\e[1;30m\]@\h\[\e[0m\] \W\[\e[0m\]\[\e[1;30m\]]\$ \[\e[0m\]'
PS1='\[\e[1;30m\][\[\e[1;36m\]\u\[\e[0m\]\[\e[1;30m\]@\H\[\e[0m\] \w\[\e[0m\]\[\e[1;30m\]]\$ \[\e[0m\]'
PROMPT_DIRTRIM=3 # - - - - - - - - - - - - - - - - - - - - - - - - ^

# TAB 'command' auto-complete for 'man' and 'sudo'
complete -cf man
complete -cf sudo
complete -cf which

# VI editing
set -o vi

# Protection
alias rm='rm -i'

# Devel Shortcuts

# grep recursively, ignore case and print line-number
alias grin='grep -r -i -n --color=auto'

# VIm Read-Only
alias rov='vim -R' 

# quick list dotfiles
alias lsa='ls -a --show-control-chars'

# what is says
function cl() {
cd $1 ; ls --color=auto
}

# like grin but find the subroutine too!
alias grins='~/Sources/bash/subrgrep/grins'

