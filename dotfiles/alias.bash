alias ..='cd ..'
alias ...='cd ../..'
alias cll="clear;ll"

alias resource="source ${HOME}/.bashrc"

alias myip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1';curl icanhazip.com"
function fif() { find . -exec grep -nHr "$1" {} \; ; }

#git
alias g='git'
#see ~/.bash/git/.gitconfig for git aliases

#gradle
alias gcb="gradle clean build"
alias gci="gradle cleanIdea idea"

#O2
function odl() { ssh "$@" 'telnet 172.31.211.4 259';}


