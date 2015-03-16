set backupdir=c:\users\leongyl\vimbak//
set directory=c:\users\leongyl\vimswap//
set backup
set cursorline
set autoindent
set nocompatible
set hlsearch
set ts=4
set number
set ruler
set ignorecase
set smartcase
set lazyredraw
set hidden
syntax on
"code folding
nnoremap <space> za
vnoremap <space> zf
"buffer switching
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
colorscheme evening
set guifont=Consolas:h10:cANSI
inoremap <CR> <Esc>
source ~/vimfiles/marvim.vim
execute pathogen#infect()
map <F1> :NERDTreeToggle<CR>
set wildmenu
set ruler
filetype plugin on "enables plugins for filetypes



"auto reload the vimrc on save. UBER USEFUL ZOMG
"http://www.bestofvim.com/tip/auto-reload-your-vimrc/
"the enclosing augrop and autocmd! is to clear any previously
"registered autocommands because autocmd is not idempotent, each
"time you call, it will register a new instance, so eventually
"each save of vimrc will lead to source $MYVIMRC running a million times
augroup reload_vimrc " {
    autocmd!
	"do the actual reload
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
