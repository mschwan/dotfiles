" ========== Vundle ==========
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Airline
Plugin 'bling/vim-airline'
" Colorscheme
Plugin 'chriskempson/base16-vim'
" Surround with Tags
Plugin 'tpope/vim-surround'
" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" Various language additions
Plugin 'tkztmk/vim-vala'
Plugin 'tpope/vim-haml'

call vundle#end()            " required
filetype plugin indent on    " required

" ========== Line numbers and Indention ==========
set number
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

" ========== Colorscheme ==========
syntax on
set background=dark
set t_Co=256
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-ocean

" ========== Statusline ==========
set laststatus=2
set noshowmode
let g:airline_left_sep=''
let g:airline_right_sep=''

" ignore arrow keys
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
