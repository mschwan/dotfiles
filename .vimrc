" ========== Vundle ==========
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required

" ========== Line numbers and Indention ==========
set number
set expandtab
set tabstop=4
set shiftwidth=4

" ========== Colorscheme ==========
syntax on
set t_Co=16
set background=dark
colorscheme solarized
let g:solarized_term=1

" ========== Statusline ==========
set laststatus=2
let g:airline_powerline_fonts=1
