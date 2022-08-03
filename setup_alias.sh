#!/bin/bash
aliases=$(cat <<EOF
## Colorize the ls output ##
alias ls='ls -CF --color=auto'
 
## Use a long listing format ##
alias ll='ls -la'

alias lf='ls -alF'

alias lt='ls --human-readable --size -1 -S --classify'

alias lu='du -sh * | sort -h'  
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'

## get rid of command not found ##
alias cd..='cd ..'

## Update
alias sup="sudo apt update && sudo apt upgrade -y"
alias purge="sudo apt autoremove && apt purge"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# install  colordiff package :)
alias diff='colordiff'

alias mount='mount |column -t'

# handy short cuts #
alias h='history'
alias j='jobs -l'

## Use vim
alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

## Services
alias whatsup='service --status-all'  

## GIT
alias gs='git status'
alias gb='git branch'  
alias gr='git remote -v'

EOF
)
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, please choose one of them : bash or zsh"
elif [ "$1" == "bash" ]; then
    shift
    echo "${aliases}" >> $HOME/.bashrc
    source $HOME/.bashrc
    echo "Done, open a new terminal"
elif [ "$1" == "zsh" ]; then
    shift
    echo "${aliases}" >> $HOME/.zshrc
    source $HOME/.zshrc
    echo "Done, open a new terminal"
fi
