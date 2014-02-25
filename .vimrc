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
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'dahu/vim-fanfingtastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'Yggdroot/indentLine'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'dbakker/vim-lint'
" Syntax highlighting
Bundle 'jelera/vim-javascript-syntax'
Bundle 'cespare/vim-toml'
Bundle 'tpope/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'cakebaker/scss-syntax.vim'
" Color schemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'junegunn/seoul256.vim'

""
"" PLUGIN CONFIGURATION
""

"" CtrlP
let g:ctrlp_follow_symlinks=0

"" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=0
let g:syntastic_loc_list_height=5

"" EasyMotion
let g:EasyMotion_leader_key='<Space>'

""
"" RUN AUTOMATICALLY
""

" Turn on HardMode!
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

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
filetype plugin indent on

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

" Line numbers, rulers
set ruler
set number

" Encourage 80 columns of characters per file
set textwidth=80
let &colorcolumn=join(range(81,999),",")

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
