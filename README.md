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

## Install [Base16 Shell Theme](https://github.com/chriskempson/base16-shell)
```
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```
Add this to the `~/.bashrc` file:
```
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-ocean.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
```
