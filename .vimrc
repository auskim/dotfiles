" Vimrc for auskim. Use freely.
" keys used with leader: n,h,q,w,r,l,p,b,s,/,r,u,t,a,f,c,m

" === TODO === {{{
" colorscheme for folds
" buffer management
" find more useless keys to remap
"}}}

" === General === {{{

set nocompatible               " Avoid compatibility features
set t_Co=256                   " 256 colors
syntax on                      " Enable syntax highlighting
set background=dark            " Dark background
colorscheme flatland           " Color scheme
set laststatus=2               " Status bar always visible
set backspace=indent,eol,start " Guarantee backspace functionality
filetype plugin indent off     " Disable filetype plugins and auto indentation
let mapleader = " "            " Set leader key
set modelines=1                " Allow mode line for this file
set wildmenu
set cursorline
" }}}
" === Plugins === {{{

call plug#begin() " Load vim-plug

Plug 'airblade/vim-gitgutter'
Plug 'gcmt/taboo.vim'
Plug 'junegunn/fzf', {'dir' : '~/.fzf', 'do': './install --bin'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-easy-align'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" vim-plug
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pu :PlugUpdate<cr>
nnoremap <leader>ps :PlugStatus<cr>
nnoremap <leader>pc :PlugClean<cr>

" vim-airline
let g:airline_theme='powerlineish'
let g:airline_section_b = airline#section#create(['%t', '%m', '%y', ' ', '%r'])
let g:airline_section_c = airline#section#create(['tagbar'])
let g:airline_section_gutter = airline#section#create(['%='])
let g:airline_section_x = airline#section#create(['branch', ' | ', 'hunks'])
let g:airline_section_y = airline#section#create(['%03b', ' ', '0x%02B'])
let g:airline_section_z = airline#section#create(['%l', '/', '%L', ' (', '%p', '%%) : ', '%c'])
let g:airline_left_sep='>>'
let g:airline_right_sep='<<'

" fzf
nnoremap <leader>ff :Files %:p:h<cr>
nnoremap <leader>fg :GFiles<cr>
nnoremap <leader>fc :Files $CODE_DIR<cr>
nnoremap <leader>h :Helptags<cr>
nnoremap <leader><Tab> :History:<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>m :Marks<cr>
nnoremap <leader>c :Commits<cr>
nnoremap <leader>/ :Ag! 

" taboo
let g:taboo_tab_format=" %N %f%m "
let g:taboo_modified_tab_flag="[+]"

" vim-easy-align
xmap <leader>a <Plug>(EasyAlign)
nmap <leader>a <Plug>(EasyAlign)

" limelight.vim
let g:limelight_conceal_ctermfg = 240
nnoremap <leader>l :Limelight<cr>
nnoremap <leader>L :Limelight!<cr>

" tagbar
nnoremap <leader>t :TagbarToggle<cr>

" gundo
nnoremap <leader>u :GundoToggle<cr>

" rainbow
let g:rainbow_active = 1
nnoremap <leader>r :RainbowToggleOn<cr>
" }}}
" === Keybindings === {{{

" Movement
nnoremap J }
nnoremap K {
nnoremap { <PageDown>zz
nnoremap } <PageUp>zz
nnoremap L gt
nnoremap H gT

" Panes
nmap <Up> <C-w>k
nmap <Down> <C-w>j
nmap <Left> <C-w>h
nmap <Right> <C-w>l
imap <Up> <Esc><C-w>k
imap <Down> <Esc><C-w>j
imap <Left> <Esc><C-w>h
imap <Right> <Esc><C-w>l

" Jumps
nnoremap ; <C-o>
nnoremap ' <C-i>

" Folds
nnoremap <leader><Space> za

" Marks
nnoremap : `

" Tabs (switch tabs easily by using leader)
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>n :tabnew<cr>
nnoremap <leader>N :tabnew 
nnoremap <leader>e :e 

" Misc
nnoremap <tab> :
inoremap jk <Esc>
nmap <enter> o<Esc>
cnoremap <c-w> <home>\<<end>\>
nnoremap <F2> :nohlsearch<CR>
nnoremap <S-u> <C-r>
nnoremap <leader>s :so %<cr>
nnoremap Q <nop> " Disable ex mode because i have no idea what to do with it

" Save and quit
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :q!<cr>
nnoremap <leader>z :wqall<cr>
"}}}
" === Commands === {{{

set history=1000 undolevels=1000 " Save more history and undo levels
set showcmd report=0             " Show current command info
set warn                         " Warn if executing shell command without save
set wildmode=list:longest,full   " Complete to longest common string and list possible matches, then iterate
set suffixes+=.class,.pdf,.pyc   " Give compiled files, etc, lower priority in wildcard matching
"}}}
" === Display === {{{

set number relativenumber    " Show line numbers
set scrolloff=2              " Show 2 lines of context when scrolling and during search
set display=lastline         " Show parts of lines that are cut off at the bottom
set shortmess+=Ia            " Do not display intro message at start and shorten all file messages
set textwidth=0 wrapmargin=0 " Do not auto newline beyond a certain width
set lazyredraw               " Redraw screen only when necessary
"}}}
" === Spacing === {{{

set expandtab               " Use spaces instead of tabs
set tabstop=4               " Display tabs as 4 spaces (necessary for retab)
set softtabstop=4           " Tab in insert mode inserts 4 spaces
set shiftwidth=4 shiftround " Insert 4 spaces per tab when shifting, rounding to the nearest tab
set autoindent              " Copy indentation of current line for new lines
set pastetoggle=<F2>        " Toggles auto formatting of pasted material
"}}}
" === Autocommands === {{{

augroup auto
    " Override tabbing settings for css, html, js with 2 spaces per tab
    autocmd FileType css,html,js setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END"}}}
" === Search === {{{

set hlsearch             " Highlight search matches
set incsearch            " Search incrementally, i.e. as queries are typed
set ignorecase smartcase " Ignore case for search, but override for capitalized queries
" }}}
" === Backups === {{{

set backup writebackup        " Enable backups
set dir=~/.vim,/var/tmp       " Set swapfile directory
set backupdir=~/.vim,/var/tmp " Set backup directory
"}}}

" vim:foldmethod=marker:foldlevel=0
