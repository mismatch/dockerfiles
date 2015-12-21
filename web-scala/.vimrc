set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'IndexedSearch'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on

set encoding=utf-8

set showcmd
set showmode
set ruler

set wildmenu
set wildmode=list:longest,full
set wildignore+=.git,.svn,*.class

set textwidth=120
set colorcolumn=120
set wrap

set autoindent
set smartindent

set noexpandtab
set shiftwidth=4
set shiftround
set tabstop=4

set incsearch
set hlsearch
set ignorecase
set smartcase

set scrolloff=3

nmap <silent> <leader>n :silent :nohlsearch<CR>
nmap <F6> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:ctrlp_custom_ignore='\v[\/]target'
