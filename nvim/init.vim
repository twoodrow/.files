set relativenumber
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set guifont=Lucida_Console

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/seoul256.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'freeo/vim-kalisi'
call plug#end()

" colorscheme stuff
"let g:seoul256_background=233
"colo seoul256
"color kalisi
"set background=dark
colo slate

"""""" Some NERDTree setup
" enables on startup
autocmd vimenter * NERDTree
" close vim when only a NERDTree tab is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" disables mouse 'click to move to position'
set mouse-=a
