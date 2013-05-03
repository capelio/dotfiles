"" Compatibility
set nocompatible
set secure
set exrc
filetype on
filetype off

"" VUNDLE

"" Setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"" My Plugin Bundles
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'pangloss/vim-javascript'
Bundle 'godlygeek/tabular'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'dahu/vim-fanfingtastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'myusuf3/numbers.vim'
Bundle 'cespare/vim-toml'
Bundle 'chriskempson/base16-vim'

"" PLUGIN CONFIGURATION

" Powerline
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

"" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=0
let g:syntastic_loc_list_height=5

"" Powerline
let g:Powerline_symbols = 'fancy'

"" EasyMotion
let g:EasyMotion_leader_key = '<Space>'

"" Javascript syntax (HTML indentation)
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"" VIM BEHAVIOR

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
set softtabstop=2
set smarttab
set autoindent
set noexpandtab

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
set background=dark
colorscheme base16-tomorrow
hi SignColumn ctermbg=black
hi LineNr ctermbg=black
hi CursorLineNr ctermbg=black
hi TabLine ctermbg=red
hi TabLineFill ctermbg=blue
hi StatusLineNC ctermbg=cyan

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
nnoremap <silent> <leader>th :set hlsearch!<CR>

" Toggle line wrapping
nnoremap <silent> <leader>tw :set nowrap!<CR>

" Toggle line numbers
nnoremap <silent> <leader>t# :set number!<CR>

" Toggle NERDTree
nnoremap <silent> <leader>tn :NERDTreeToggle <CR>

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
