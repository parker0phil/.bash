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


#Downloads
function getjava(){
  case "$OSTYPE" in
    linux*)
        PLATFORM="linux-x64"
    ;;
    darwin*)
        PLATFORM=""
    ;;
    *)
        echo "Unsupported OS: $OSTYPE"
    ;;
  esac
  VERSION="7u17-"
  BUILD="b02"
  FILE="jre-${VERSION}${PLATFORM}.tar.gz"
  LINK="http://download.oracle.com/otn-pub/java/jdk/${VERSION}${BUILD}/${FILE}"

  mkdir -p "${HOME}/.tools"
  cd "${HOME}/.tools"


  echo "Downloading: $LINK"
  curl -b gpw_e24=http%3A%2F%2Fwww.oracle.com -O -L $LINK
  BINFOLDER=`tar -ztf ${FILE}| head -n1 | cut -d "/" -f 1`
  tar -zxvf "${FILE}"
  rm java
  ln -s ${BINFOLDER} java
  rm ${FILE}
  echo "remember to resource"
}



