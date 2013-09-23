alias ..='cd ..'
alias ...='cd ../..'
alias cll="clear;ll"

function fif() { find . -exec grep -nHr "$1" {} \; ; }
function odl() { ssh "$@" 'telnet 172.31.211.4 259';} 

alias gcb="gradle clean build"
alias gci="gradle cleanIdea idea"

