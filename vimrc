set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" tab complete
Plugin 'ervandew/supertab'

" html complete
Plugin 'mattn/emmet-vim'

" javascript
Plugin 'pangloss/vim-javascript'

" c plugin
Plugin 'vim-scripts/c.vim'

" visual marker plugin
Plugin 'kshenoy/vim-signature'

" plugin for php qa
Bundle 'joonty/vim-phpqa.git'

" auto tags
Plugin 'joonty/vim-taggatron'

" Auto closing brackets
Plugin 'Raimondi/delimitMate'

" JSHint for linting
Plugin 'amaraxmonika/jshint.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line" Tun on line numbering.  Turn it of with "set nonu"
set nu

" Set syntax on
syntax on

" Indent automatically depending on filetype
"filetype indent on
"set autoindent
" file type specific settings

" Hightlight search
set hls

" Change colorscheme from default to delek

" colorscheme delek

" Turn off bracket highlighting
let g:loaded_matchparen=1

" Mapping keys k + j to <esc>
inoremap kj <Esc>

" setting mouse mode on
set mouse=a

" Mapping spacebar to clear current search buffer 
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" setting tab to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" setting clipboard
"set clipboard=unnamed

" fixing backspace settings
set backspace+=start,eol,indent  

" turning off auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" testing new stuff here
" ---------------------
" set relative line position numbers
set relativenumber

" add uppercase to insert mode
imap <c-u> <esc> viw~ gi

" Testing visible 80th column
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

" setting paste mode
set pastetoggle=<F2>

" faster cmd mode save
nnoremap ; :

" sudo save after file is open
cmap w!! w !sudo tee % >/dev/null
