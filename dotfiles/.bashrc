#PP
export DOTFILES=${HOME}/.bash/dotfiles
source ${HOME}/.bashrc.orig
source $DOTFILES/alias.bash
source $DOTFILES/tools.bash
source $DOTFILES/git.bash

echo 'curl -s get.gvmtool.net | bash'
