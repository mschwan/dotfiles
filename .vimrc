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
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" ========== Statusline ==========
set laststatus=2
set noshowmode
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16' " workaround for solarized theme
