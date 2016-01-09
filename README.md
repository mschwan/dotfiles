# Dotfiles
My personal configuration files

## Setup [Vundle](https://github.com/VundleVim/Vundle.vim)
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## Configure Font Settings
```
cp fonts.conf ~/.config/fontconfig/fonts.conf
```

## Install [Gruvbox Vim Theme](https://github.com/morhetz/gruvbox)
First install the Gruvbox theme with Vundle, then add this to the `~/.bashrc` file:
```
# Gruvbox
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
```
