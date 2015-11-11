#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --show-control-chars --group-directories-first -h --color=auto'
# ls --show-control-chars :
# `> Show greek characters in combination with proper terminal encoding(decoding)
alias grep='grep --color=auto'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown'
alias yaourt='yaourt --noconfirm'

# Prompt
# Color Codes Reference: xfce4-terminal --color-table
#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1;30m\][\[\e[1;34m\]\u\[\e[0m\]\[\e[1;30m\]@\h\[\e[0m\] \W\[\e[0m\]\[\e[1;30m\]]\$ \[\e[0m\]'
#PS1='\[\e[1;30m\][\[\e[1;36m\]\u\[\e[0m\]\[\e[1;30m\]@\H\[\e[0m\] \w\[\e[0m\]\[\e[1;30m\]]\$ \[\e[0m\]'
PS1='\[\e[1;30m\][\[\e[1;36m\]\u\[\e[0m\]\[\e[1;30m\]@\H\[\e[0m\] \[\e[37m\]\w\[\e[0m\]\[\e[1;30m\]]\$ \[\e[0m\]'
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

# what is says
function cl() {
cd $1 ; ls --color=auto
}

# like grin but find the subroutine too!
alias grins='~/Sources/bash/subrgrep/grins'

