"" Compatibility
set nocompatible
set secure
set exrc
set noesckeys

""
"" VUNDLE
""

"" Turn off filetype before starting Vundle, re-enable alter
filetype off

"" Setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" Bundles
" Vundle itself is a bundle
Bundle 'gmarik/Vundle.vim'
" Functionality
Bundle 'dbakker/vim-lint'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'dahu/vim-fanfingtastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'editorconfig/editorconfig-vim'
" Syntax highlighting
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-markdown'
" Color schemes
Bundle 'junegunn/seoul256.vim'

"" Close Vundle, re-enable filetype
call vundle#end()
filetype plugin indent on

""
"" PLUGIN CONFIGURATION
""

"" CtrlP
let g:ctrlp_follow_symlinks=0

"" EasyMotion
let g:EasyMotion_leader_key='<Space>'

""
"" VIM BEHAVIOR
""

" Backups
set writebackup
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

" Encoding
set encoding=utf-8

" Status bar
set laststatus=2
set showcmd

" Whitespace
set tabstop=2
set shiftwidth=2
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

" Syntax highlighting
syntax enable

" Folding
set nofoldenable

" Alerts
set visualbell

" History
set history=1000

" File completion
set wildmenu
set wildmode=list:longest,list:full

" Sequence timeout
set timeout timeoutlen=3000 ttimeoutlen=100

" Buffers
set hidden

" Scrolling
set scrolloff=3

""
"" VISUALS
""

" Line rulers
set ruler

" Color scheme
colorscheme seoul256

""
"" LEADER MAPPINGS
""

" Use comma for the leader
let mapleader=","

" Swap ` and '
nnoremap ' `
nnoremap ` '

" Toggle search higlighting
nnoremap <silent> <leader>ts :set hlsearch!<CR>

" Toggle line wrapping
nnoremap <silent> <leader>tw :set wrap!<CR>:set linebreak!<CR>

" Toggle line numbers
nnoremap <silent> <leader>t# :set number!<CR>

" Toggle paste mode
nnoremap <silent> <leader>tp :set paste!<CR>

" Toggle HardMode
nnoremap <silent> <leader>th :call ToggleHardMode()<CR>

" Toggle NERDTree
nnoremap <silent> <leader>tn :NERDTreeToggle<CR>

" Show registers
nnoremap <silent> <leader>sr :registers<CR>

" Force a retab
nnoremap <silent> <leader>ft :retab!<CR>

" Force a reload
nnoremap <silent> <leader>fr :e<CR>

"" Fugitive (git plugin)
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gb :Gblame<CR>
