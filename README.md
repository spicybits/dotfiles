To use these dotfiles, I symlink them to their appropriate locations.  This
lets me keep everything neatly squared away in a repo, while also allowing me
to not need a live copy and a repo copy of each and every dotfile.  Once
symlinked, they're one in the same.

```
ln -s dotfiles/bash_profile ~/.bash_profile
ln -s dotfiles/bashrc ~/.bashrc
ln -s dotfiles/bash_aliases ~/.bash_aliases
ln -s dotfiles/gitconfig ~/.gitconfig
ln -s dotfiles/screenrc ~/.screenrc
ln -s dotfiles/vimrc ~/.vimrc
```


`bootstrap.sh` will do this work for you.  It will:

1. Make backup copies of any existing dotfiles
2. Symlink the repo copy of the file to where it lives in the user's homedir
