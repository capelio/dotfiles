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
" Clojure programming
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'kien/rainbow_parentheses.vim'
" Misc syntax
Bundle 'cespare/vim-toml'
Bundle 'wavded/vim-stylus'
Bundle 'digitaltoad/vim-jade'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-markdown'
Bundle 'chriskempson/base16-vim'
"Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'groenewege/vim-less'
Bundle 'cakebaker/scss-syntax.vim'

""
"" PLUGIN CONFIGURATION
""

"" CtrlP
let g:ctrlp_follow_symlinks=0

"" Airline
let g:airline_powerline_fonts=1
set lazyredraw

"" Bufferline
"let g:bufferline_echo=0

"" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=0
let g:syntastic_loc_list_height=5

"" EasyMotion
let g:EasyMotion_leader_key = '<Space>'

""
"" RUN AUTOMATICALLY
""

" Turn on HardMode!
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Turn on Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

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
syntax on
filetype plugin indent on
set t_Co=256
set background=dark
colorscheme base16-tomorrow
" Fine tune the base16 tomorrow theme
hi Search ctermfg=LightGrey
hi Search ctermbg=DarkGrey
hi IncSearch ctermfg=White
hi IncSearch ctermbg=DarkGrey
hi CursorLine ctermbg=Black
hi CursorLine ctermfg=White
hi StatusLineNC ctermfg=White
hi StatusLineNC ctermbg=DarkGrey
hi LineNr ctermbg=Black
hi SignColumn ctermbg=Black
hi StatusLine ctermfg=White
hi StatusLine ctermbg=DarkGrey
hi GitGutterAdd ctermbg=Black
hi GitGutterChange ctermbg=Black
hi GitGutterDelete ctermbg=Black

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
set timeoutlen=500

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

" Navigate lines more quickly
nnoremap <C-h> 5h
nnoremap <C-j> 5j
nnoremap <C-k> 5k
nnoremap <C-l> 5l

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

" Toggle registers
nnoremap <silent> <leader>tr :registers<CR>

" Force a retab
nnoremap <silent> <leader>ft :retab!<CR>

" Force a reload
nnoremap <silent> <leader>fr :e<CR>

" Go to the next buffer
nnoremap <silent> ] :bnext<CR>

" Go to the previous buffer
nnoremap <silent> [ :bprev<CR>

"" Fugitive (git plugin)
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gb :Gblame<CR>
