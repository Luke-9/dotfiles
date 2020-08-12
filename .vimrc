" Auto install for vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim-plug Config
call plug#begin()

" Utility
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'

" Dev
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Appearance
Plug 'itchyny/lightline.vim'

call plug#end()

" Shortcuts
" Maps nerdtree toggle to Ctrl-o
map <C-o> :NERDTreeToggle<CR>

" General Config
set number
syntax on
" To get molokai scheme: 
"    cd /usr/share/vim/vim*/colors
"    sudo wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
colorscheme molokai

" Manual Config 
"
"    vim-eunuch
"        mkdir -p ~/.vim/pack/tpope/start
"        cd ~/.vim/pack/tpope/start
"        git clone https://tpope.io/vim/eunuch.git
"        vim -u NONE -c "helptags eunuch/doc" -c q
"
"    vim-surround
"        https://github.com/tpope/vim-surround
"        mkdir -p ~/.vim/pack/tpope/start
"        cd ~/.vim/pack/tpope/start
"        git clone https://tpope.io/vim/surround.git
"        vim -u NONE -c "helptags surround/doc" -c q
"
"    vim-gitgutter
"        https://github.com/airblade/vim-gitgutter
"        mkdir -p ~/.vim/pack/airblade/start
"        cd ~/.vim/pack/airblade/start
"        git clone https://github.com/airblade/vim-gitgutter.git
"        vim -u NONE -c "helptags vim-gitgutter/doc" -c q
