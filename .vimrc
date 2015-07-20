" ========== Vundle ==========
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'tkztmk/vim-vala'
Plugin 'chriskempson/base16-vim'

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
set t_Co=256
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-ocean
"let g:solarized_termcolors=256

" ========== Statusline ==========
set laststatus=2
set noshowmode
let g:airline_left_sep=''
let g:airline_right_sep=''
"let g:airline_theme='solarized' " workaround for solarized theme
