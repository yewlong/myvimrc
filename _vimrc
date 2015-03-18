"******************************
"THINGS MOST PEOPLE WOULD WANT
"******************************
set autoindent
set nocompatible
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
syntax on
set wildmenu
set ruler
filetype plugin on
set backspace=indent,eol,start
set noerrorbells

"****************************
"THINGS NOT EVERYONE MAY WANT
"****************************
set hidden
set cursorline
set ts=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set lazyredraw
colorscheme solarized
set background=dark
set guifont=Consolas:h10:cANSI
set backup
"change this to point to some backup directory
set backupdir=~/.vimbak
"change this to point to some swap directory
set directory=~/.vimswap
set fileformats=unix,dos,mac

"********************************
"PERSONAL KEYBINDINGS AND PLUGINS
"********************************
inoremap <CR> <Esc>
map <Leader>1 :NERDTreeToggle<CR>
"marvim mappings interfere with byobu mappings
nmap <Leader>2 <F2>
map <Leader>3 <F3>
execute pathogen#infect()
"code folding
nnoremap <space> za
vnoremap <space> zf
"buffer switching
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
"buffer navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"use an autocmd to auto reload the vimrc on save.
"http://www.bestofvim.com/tip/auto-reload-your-vimrc/
"the enclosing augrop and autocmd! is to clear any previously
"registered autocommands because autocmd is not idempotent, so each
"time you call, it will register a new instance and eventually
"each save of vimrc will lead to source $MYVIMRC running a million times
augroup reload_vimrc " {
    autocmd!
	"do the actual reload
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
