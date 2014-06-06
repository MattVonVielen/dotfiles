set nocompatible               " be iMproved
filetype off                   " required!

source ~/.vim/vundle.vim

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

map <Leader>n :NERDTreeToggle<CR>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Use modeline overrides
set modeline
set modelines=10

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" enable ruby folding, default to unfolded
let ruby_fold=1
set foldlevelstart=99

" Show (partial) command in the status line
set showcmd

map <C-TAB> :tabnext<CR>
map <C-S-TAB> :tabprev<CR>

let g:Powerline_symbols="fancy"

colors ir_black

set mouse=a
set title
