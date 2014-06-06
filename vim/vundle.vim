set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'wgibbs/vim-irblack'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'

Bundle 'jimenezrick/vimerl'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'elzr/vim-json'
Bundle 'kchmck/vim-coffee-script'
Bundle 'brookhong/cscope.vim'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


