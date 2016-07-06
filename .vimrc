" Vimrc for auskim. Use freely.

" TODO
" window pane shortcuts

" Sections (for navigation):
" = General =
" = Plugins =
" = Keybindings =
" = Commands =
" = Display =
" = Spacing =
" = Search =

" === General ===

set nocompatible               " Avoid compatibility features
set t_Co=256                   " 256 colors
syntax on                      " Enable syntax highlighting
set background=dark            " Dark background
colorscheme flatland           " Color scheme
set laststatus=2               " Status bar always visible
set backspace=indent,eol,start " Guarantee backspace functionality
filetype plugin indent off     " Disable filetype plugins and auto indentation
let mapleader = " "            " Set leader key

" === Plugins ===

call plug#begin() " Load vim-plug

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf', {'dir' : '~/.fzf', 'do': './install --all'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/vimproc.vim', {'build': {'mac': 'make', 'linux': 'make'}}
Plug 'Shougo/unite.vim'
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-fugitive'
Plug 'gcmt/taboo.vim'
Plug 'rking/ag.vim'

call plug#end()

" vim-plug
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pu :PlugUpdate<cr>
nnoremap <leader>ps :PlugStatus<cr>
nnoremap <leader>pc :PlugClean<cr>

" vim-airline
let g:airline_theme='powerlineish'
" let g:airline_powerline_fonts=1
let g:airline_section_b = airline#section#create(['%t', '%m', '%y', ' ', '%r'])
let g:airline_section_c = airline#section#create(['tagbar'])
let g:airline_section_gutter = airline#section#create(['%='])
let g:airline_section_x = airline#section#create(['branch', ' | ', 'hunks'])
let g:airline_section_y = airline#section#create(['%03b', ' ', '0x%02B'])
let g:airline_section_z = airline#section#create(['%l', '/', '%L', ' (', '%p', '%%) : ', '%c'])
let g:airline_left_sep='>>'
let g:airline_right_sep='<<'

" fzf
nnoremap <leader>f :FZF<cr>

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

"unite.vim
nnoremap <leader>/ :Unite grep:~/Codebases/<cr>
nnoremap <leader>b :Unite -quick-match buffer<cr>

" === Keybindings ===

nnoremap J }
nnoremap K {
nnoremap { <PageDown>
nnoremap } <PageUp>
nnoremap L gt
nnoremap H gT
nnoremap ; <C-o>
nnoremap ' <C-i>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

nnoremap <tab> :
nnoremap <leader>n :tabnew 
inoremap jk <Esc>
nnoremap <Enter> o<Esc>
cnoremap <c-w> <home>\<<end>\>
nnoremap <leader>h :nohlsearch<CR>
nnoremap <leader><tab> mzgg=G'z

nnoremap <leader>s :so %<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :wq<cr>
nnoremap <leader>Q :wqall<cr>

" === Commands ===

set history=1000 undolevels=1000 " Save more history and undo levels
set showcmd report=0             " Show current command info
set warn                         " Warn if executing shell command without save
set wildmode=list:longest,full   " Complete to longest common string and list possible matches, then iterate
set suffixes+=.class,.pdf,.pyc   " Give compiled files, etc, lower priority in wildcard matching

" === Display ===

set number relativenumber    " Show line numbers
set scrolloff=2              " Show 2 lines of context when scrolling and during search
set display=lastline         " Show parts of lines that are cut off at the bottom
set shortmess+=Ia            " Do not display intro message at start and shorten all file messages
set textwidth=0 wrapmargin=0 " Do not auto newline beyond a certain width

" === Spacing ===

set expandtab               " Use spaces instead of tabs
set tabstop=4               " Display tabs as 4 spaces (necessary for retab)
set softtabstop=4           " Tab in insert mode inserts 4 spaces
set shiftwidth=4 shiftround " Insert 4 spaces per tab when shifting, rounding to the nearest tab
set autoindent              " Copy indentation of current line for new lines
set pastetoggle=<F2>        " Toggles auto formatting of pasted material
" Override tabbing settings for css, html, js with 2 spaces per tab
autocmd FileType css,html,js setlocal tabstop=2 softtabstop=2 shiftwidth=2

" === Search ===

set hlsearch             " Highlight search matches
set incsearch            " Search incrementally, i.e. as queries are typed
set ignorecase smartcase " Ignore case for search, but override for capitalized queries
