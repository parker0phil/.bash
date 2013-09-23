if `head -n1 ${HOME}/.bashrc | grep -q '#PP'`; then
   echo "Not backing up .bashrc as it is a PP bash"
else
  cp --interactive ${HOME}/.bashrc ${HOME}/.bashrc.orig
fi
cp ${HOME}/.bash/dotfiles/.bashrc ${HOME}/.bashrc
echo "Remember: source '${HOME}/.bashrc'"



if `head -n1 ${HOME}/.gitconfig | grep -q '#PP'`; then
   echo "Not backing up .gitconfig as it is a PP bash"
else
  cp --interactive ${HOME}/.gitconfig ${HOME}/.gitconfig.orig
fi
cp ${HOME}/.bash/git/.gitconfig ${HOME}/.gitconfig





