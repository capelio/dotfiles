"" Compatibility
set nocompatible
set secure
set exrc
set noesckeys

""
"" VUNDLE
""

"" Setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"" Bundles
" Functionality
Bundle 'wikitopian/hardmode'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'dahu/vim-fanfingtastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'Yggdroot/indentLine'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'dbakker/vim-lint'
" Clojure programming
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'kien/rainbow_parentheses.vim'
" Syntax highlighting
Bundle 'jelera/vim-javascript-syntax'
Bundle 'cespare/vim-toml'
Bundle 'tpope/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'cakebaker/scss-syntax.vim'

""
"" PLUGIN CONFIGURATION
""

"" CtrlP
let g:ctrlp_follow_symlinks=0

"" Airline
let g:airline_powerline_fonts=0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_inactive_collapse=1

"" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=0
let g:syntastic_loc_list_height=5

"" EasyMotion
let g:EasyMotion_leader_key = '<Space>'

""
"" RUN AUTOMATICALLY
""

" Turn on Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Turn on HardMode!
au VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

""
"" VIM BEHAVIOR
""

" Backups
set writebackup
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

" Syntax highlighting and colors
syntax enable
filetype plugin indent on
set background=dark

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
set ttimeoutlen=100

" Buffers
set hidden

" Scrolling
set scrolloff=3

""
"" VISUALS
""

" Line numbers, rulers
set ruler
set number

""
"" LEADER MAPPINGS
""

" Use comma for the leader
let mapleader=","

" Swap ` and '
nnoremap ' `
nnoremap ` '

" Toggle search higlighting
nnoremap <silent> <leader>th :set hlsearch!<CR>

" Toggle line wrapping
nnoremap <silent> <leader>tw :set wrap!<CR>:set linebreak!<CR>

" Toggle line numbers
nnoremap <silent> <leader>t# :set number!<CR>

" Toggle paste mode
nnoremap <silent> <leader>tp :set paste!<CR>

" Toggle NERDTree
nnoremap <silent> <leader>tn :NERDTreeToggle<CR>

" Toggle Syntastic syntax checking
nnoremap <silent> <leader>te :SyntasticToggleMode<CR>

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
