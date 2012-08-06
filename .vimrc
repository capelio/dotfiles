"" ONLOAD
call pathogen#infect()

"" VIM BEHAVIOR

" Compatibility
set nocompatible

" Backups
set writebackup

" Directories
set backupdir=~/.vim/temp
set directory=~/.vim/temp

" Encoding
set encoding=utf-8

" Status bar
set laststatus=2
set showcmd

" Whitespace
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set autoindent
set expandtab

" Backspacing
set backspace=indent,eol,start

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Syntax
syntax on
filetype on
filetype plugin on
filetype indent on

" Folding
set nofoldenable

" Alerts
set visualbell

" History
set history=1000

" File completion
set wildmenu
set wildmode=list:longest,list:full

" Buffers
set hidden

" Scrolling
set scrolloff=3

"" VISUALS

" Line numbers, rulers
set ruler
set number

" Use a slick color scheme
colorscheme desert

"" LEADER MAPPINGS

" Use comma for the leader
let mapleader=","

" Swap ` and '
nnoremap ' `
nnoremap ` '

" Navigate lines more quickly
nnoremap <C-h> 5h
nnoremap <C-j> 5j
nnoremap <C-k> 5k
nnoremap <C-l> 5l

" Toggle search higlighting
nnoremap <silent> <leader>h :set hlsearch!<CR>

" Toggle line wrapping
nnoremap <silent> <leader>w :set nowrap!<CR>

" Toggle NERDTree
nnoremap <silent> <leader>n :NERDTreeToggle <CR>

" Toggle ZoomWin
nnoremap <silent> <leader>z :ZoomWin <CR>
