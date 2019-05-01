set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on 

let g:vim_markdown_folding_disabled = 1

set number 	    " adds line numbering
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight
filetype indent on      " load filetype-specific indent files
syntax enable           " enable syntax processing

colorscheme badwolf         " awesome colorscheme
