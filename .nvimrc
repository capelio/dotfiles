"
" Plugins
"

" Start vim-plug, our plugin manager (https://github.com/junegunn/vim-plug).
" Ensure you have manually installed vim-plug before using its commands, such
" as PlugInstall, PlugUpdate, etc. See the README on Github for instructions.
call plug#begin('~/.nvim/plugged')

" Functionality
Plug 'tpope/vim-repeat'									" . repeat support for plugins
Plug 'tpope/vim-speeddating'						" improved CTRL-A CTRL-X support
Plug 'tpope/vim-commentary'							" commenting and uncommenting operators
Plug 'tpope/vim-fugitive'								" work with git from within vim
Plug 'tpope/vim-surround'								" text object 'surroundings' operators
Plug 'Shougo/unite.vim'									" fuzzy match files and so much more!
Plug 'Shougo/neosnippet.vim'						" shortcuts for common code snippets
Plug 'Shougo/neosnippet-snippets'				" out of the box starter snippets
Plug 'Lokaltog/vim-easymotion'					" easily jump to motion matches
Plug 'dahu/vim-fanfingtastic'						" allow F, f, T, t, and ; to wrap lines
Plug 'editorconfig/editorconfig-vim'		" abide by .editorconfig rules
Plug 'bling/vim-airline'								" much improved statusline

" When editing HTML files
Plug 'othree/html5.vim', { 'for': 'html' }

" When editing Javascript files
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" When editing .jade files. Add a vim filetype as well.
autocmd BufNewFile,BufRead *.jade set filetype=jade
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }

" When editing .stylus files. Add a vim filetype as well.
autocmd BufNewFile,BufRead *.stylus set filetype=stylus
Plug 'wavded/vim-stylus', { 'for': 'stylus' }

" When editing TOML files. Add a vim filetype as well.
autocmd BufNewFile,BufRead *.toml set filetype=toml
Plug 'cespare/vim-toml', { 'for': 'toml' }

" Aesthetics
Plug 'junegunn/seoul256.vim'

" End vim-plug
call plug#end()

"""
""" Plugin Options
"""

" editorconfig
" Avoid causing problems with the vim-fugitive plugin
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" unite: use fuzzy file matching
call unite#filters#matcher_default#use([ 'matcher_fuzzy' ])

" unite: if it's available, use 'ag' for searching instead of grep
if executable('ag')
	let g:unite_source_grep_command = 'ag'
endif

" neosnippet: point to where user snippets are stored
let g:neosnippet#snippets_directory = '~/.nvim/snippets'

" vim-easymotion
let g:EasyMotion_leader_key = '<Space>'

"""
""" Sensible vim defaults adopted from https://github.com/tpope/vim-sensible
"""

" Allow .vimrc files in the current working directory to enable per-project
" vim configurations
set exrc

" Enable filetype detection, filetype plugins, and filetype indenting
filetype plugin indent on

" Enable filetype syntax highlighting
syntax enable

" Use the previous line's indenting when starting a new line
set autoindent

" Allow backspacing across autoindent'd spacing, line breaks, and the starting
" cursor position when entering insert mode.
set backspace=indent,eol,start

" Don't search included files (i.e. #include in C, require in Ruby, etc) when
" performing insert mode completion. See :help ins-completion.
set complete-=i

" Intelligently respect indent and spacing settings when using the Tab key
set smarttab

" Don't treat leading-zero numbers (e.g. 007) as octal when using the CTRL-A
" (add) and CTRL-X (subtract) commands
set nrformats-=octal

" Enable multi-character key sequences (e.g. <Leader>tr) by waiting 100
" milliseconds before completing a key sequence.
set ttimeout
set ttimeoutlen=100

" Search for and show results as a search pattern is being typed
set incsearch

" Enable the status line for all windows at all times
set laststatus=2

" Display the cursor's line number, column number, and relative file position
set ruler

" In visual mode, display the size of the selection
set showcmd

" Enable tab completion when typing commands (i.e. :help wild<Tab>)
set wildmenu

" Keep one line visible above and below the cursor position
set scrolloff=1

" Keep 5 columns visible to the left and right of the cursor position
set sidescrolloff=5

" Display as much as possible of the last line in a window
set display+=lastline
			
" When in list mode, define which characters will be used to denote tabs,
" trailing spaces, text beyond the last column, text preceding the first
" column, and non-breakable spaces.
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

" When formatting text, remove comments leaders when joining commented lines.
" See :help fo-table for other formatting options.
set formatoptions+=j

" Auto reload a unchanged file if it has been changed outside vim
set autoread

" Also consider Mac formats when determining end-of-line format
set fileformats+=mac

" Remember the last 1,000 commands and search patterns
set history=1000

" Increase the maximum number of tabs to 50
set tabpagemax=50

" Also save ALL CAPS global variables in the viminfo file
set viminfo^=!

" Don't include options when creating new sessions
set sessionoptions-=options

"""
""" Additional vim options
"""

" Highlight all search matches
set hlsearch

" Only consider case when a search term contains a non-lowercase character
set smartcase

" Use a specific directory for all swap files
set directory=~/.nvim/tmp

" Use the seoul256 color scheme
colorscheme seoul256

" Whitespace
set tabstop=2
set shiftwidth=2
set smarttab
set autoindent

"""
""" Standard mappings
"""

" neosnippet: expand snippets in select, insert, or visual mode
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" neosnippet: move between snippet placeholders using tab
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

"""
""" Leader mappings
"""

" Use comma as our leader key
let mapleader = ","

" List files
nnoremap <Leader>f :<C-u>Unite -start-insert -smartcase file_rec/neovim<CR>

" List buffers
nnoremap <Leader>b :<C-u>Unite -start-insert -ignorecase buffer<CR>

" List snippets
nnoremap <Leader>s :<C-u>Unite -start-insert -ignorecase neosnippet<CR>

" Toggle wrapping
nnoremap <Leader>w :set wrap!<CR>

" Toggle paste mode
nnoremap <Leader>p :set paste!<CR>

" Toggle line numbers
nnoremap <Leader># :set number!<CR>

" Toggle search result highlighting
nnoremap <Leader>h :set hlsearch!<CR>

" Reload vim source
nnoremap <Leader>r :source ~/.nvimrc<CR>
