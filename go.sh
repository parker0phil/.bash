if `head -n1 ${HOME}/.bashrc | grep -q '#PP'`; then
   echo "Aborting - already using PP bash"
   exit 1
else
   cp --interactive ${HOME}/.bashrc ${HOME}/.bashrc.orig
   cp ${HOME}/.bash/dotfiles/.bashrc ${HOME}/.bashrc
   echo "Remember: source '${HOME}/.bashrc'"
fi


