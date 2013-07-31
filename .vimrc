" Last modified: 2013/07/31

" ------------------------------------------------------------------------------
" General
" ------------------------------------------------------------------------------

" Avoid compatibility features
set nocompatible

" 256 colors
set t_Co=256

" Enable syntax highlighting
syntax on

" Dark background
set background=dark

" color scheme
colorscheme wombat256mod

" Guarantee backspace functionality
set backspace=indent,eol,start

" Disable filetype plugins and auto indentation
filetype plugin indent off

" Detect markdown files
autocmd BufRead,BufNewFile *.{markdown,md,mdown,mdwn,mkd,mkdn} set filetype=mkd

" ------------------------------------------------------------------------------
" Command line
" ------------------------------------------------------------------------------

" Save more history and undo levels
set history=1000 undolevels=1000

" Show current command info
set showcmd
set report=0

" Warn if executing shell command without save
set warn

" Complete to longest common string and list possible matches, then iterate
set wildmode=list:longest,full

" Give compiled files, etc, lower priority in wildcard matching
set suffixes+=.class,.pdf,.pyc

" ------------------------------------------------------------------------------
" Format
" ------------------------------------------------------------------------------

" Show line numbers
set number

" Show 2 lines of context when scrolling and during search
set scrolloff=2

" Show parts of lines that are cut off at the bottom
set display=lastline

" Do not display intro message at start and shorten all file messages
set shortmess+=Ia

" ------------------------------------------------------------------------------
" Tabbing
" ------------------------------------------------------------------------------

" Use spaces instead of tabs
set expandtab

" Display tabs as 4 spaces (necessary for retab)
set tabstop=4

" Tab in insert mode inserts 4 spaces
set softtabstop=4

" Insert 4 spaces per tab when shifting, rounding to the nearest tab
set shiftwidth=4 shiftround

" Copy indentation of current line for new lines
set autoindent

" Toggles auto formatting of pasted material
set pastetoggle=<F4>

" Override tabbing settings for css, html, js with 2 spaces per tab
autocmd FileType css,html,js setlocal tabstop=2 softtabstop=2 shiftwidth=2

" ------------------------------------------------------------------------------
" Search
" ------------------------------------------------------------------------------

" Highlight search matches
set hlsearch

" Search incrementally, i.e. as queries are typed
set incsearch

" Ignore case for search, but override for capitalized queries
set ignorecase smartcase

" Disables highlighting for the current search
nnoremap <F2> :nohlsearch<CR>

" ------------------------------------------------------------------------------
" Status line
" ------------------------------------------------------------------------------

" Always show status line
set laststatus=2

" File name, modified, read-only, help, and preview
set statusline=%f%m%r%h%w

" File type (if any), file format, and file encoding (or encoding if none)
set statusline+=\ %y%{&ft!=''?'\ ':''}[%{&ff},%{&fenc!=''?&fenc:&enc}]

" Split between left and right aligned items; truncate from here if necessary
set statusline+=%=%<

" Character under cursor in ASCII and hex
set statusline+=[\%03b,0x\%02B]

" Line/lines and column, including virtual column if applicable
set statusline+=\ [%l/%L,%c%V]

" Percent of file in terms of current line and section of file shown
set statusline+=\ [%p%%,%P]
