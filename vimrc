" Vimrc for auskim. Use freely.

" === TODO ===

" === General ===

set nocompatible               " Avoid compatibility features
set enc=utf-8                  " Show UTF-8 encoded characters
set fileencoding=utf-8
set t_Co=256                   " 256 colors
syntax on                      " Enable syntax highlighting
set background=dark            " Dark background
colorscheme flatland           " Color scheme
set backspace=indent,eol,start " Guarantee backspace functionality
filetype plugin indent off     " Disable filetype plugins and auto indentation
let mapleader = " "            " Set leader key
set modelines=1                " Allow mode line for this file
set wildmenu                   " Display wildmenu options
set cursorline                 " Always show cursorline
set hidden
set clipboard=unnamed

" === Plugins ===

call plug#begin() " Load vim-plug

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'sjl/gundo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gcmt/taboo.vim'
Plug 'junegunn/limelight.vim'
Plug 'luochen1990/rainbow'

call plug#end()

" vim-plug
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pu :PlugUpdate<cr>
nnoremap <leader>ps :PlugStatus<cr>
nnoremap <leader>pc :PlugClean<cr>

" vim-airline
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline_section_b = airline#section#create(['%t', ' ', '%m', '%y', ' ', '%r', 'readonly'])
let g:airline_section_c = airline#section#create(['tagbar'])
let g:airline_section_gutter = airline#section#create(['%='])
let g:airline_section_x = airline#section#create([])
let g:airline_section_y = airline#section#create(['%03b', ' ', '0x%02B'])
let g:airline_section_z = airline#section#create(['%c', ' : ', '%l', '/', '%L', ' (', '%p', '%%)'])
 
" fzf
nnoremap <leader>d :Files .<cr>
nnoremap <leader>f :Files $CODE_DIR<cr>
nnoremap <leader>g :GFiles<cr>
nnoremap <leader>h :Helptags<cr>
nnoremap <leader><Tab> :History:<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>m :Marks<cr>
nnoremap <leader>c :Commits<cr>
nnoremap <leader>/ :Ag! 
let g:fzf_layout = { 'down': '~30%' }

" taboo
let g:taboo_tab_format=" %f%m "
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

" === Keybindings === 

" Movement
nnoremap J }
nnoremap K {
nnoremap , "
nnoremap : gT
nnoremap " gt
nnoremap L <PageUp>zz
nnoremap H <PageDown>zz

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
nnoremap M `

" Tabs
nnoremap <leader>n :tabnew<cr>
nnoremap <leader>e :e 

" Misc
nnoremap <tab> :
inoremap jk <Esc>
nmap <enter> o<Esc>
cnoremap <c-w> <home>\<<end>\>
nnoremap <F2> :nohlsearch<CR>
nnoremap <S-u> <C-r>
nnoremap <leader>s :so ~/.vimrc<cr>
nnoremap <leader>v :Vex<cr>
nnoremap Q @

" Save and quit
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wq<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :q!<cr>

" === Commands === 

set history=1000 undolevels=1000 " Save more history and undo levels
set showcmd report=0             " Show current command info
set warn                         " Warn if executing shell command without save
set wildmode=list:longest,full   " Complete to longest common string and list possible matches, then iterate
set suffixes+=.class,.pdf,.pyc   " Give compiled files, etc, lower priority in wildcard matching

" === Display === 

set number relativenumber    " Show line numbers (absolute for current line, relative for others)
set scrolloff=2              " Show 2 lines of context when scrolling and during search
set display=lastline         " Show parts of lines that are cut off at the bottom
set shortmess+=Ia            " Do not display intro message at start and shorten all file messages
set textwidth=0 wrapmargin=0 " Do not auto newline beyond a certain width
set lazyredraw               " Redraw screen only when necessary
set laststatus=2             " Status bar always visible
set showtabline=2            " Always show tabline

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" === Spacing === 

set expandtab                " Use spaces instead of tabs
set tabstop=4                " Display tabs as 4 spaces (necessary for retab)
set softtabstop=4            " Tab in insert mode inserts 4 spaces
set shiftwidth=4 shiftround  " Insert 4 spaces per tab when shifting, rounding to the nearest tab
set autoindent               " Copy indentation of current line for new lines
set pastetoggle=<F3>         " Toggles auto formatting of pasted material

" === Autocommands === 

augroup auto
    " Override tabbing settings for css, html, js with 2 spaces per tab
    autocmd FileType css,html,js,yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" === Search === 

set hlsearch             " Highlight search matches
set incsearch            " Search incrementally, i.e. as queries are typed
set ignorecase smartcase " Ignore case for search, but override for capitalized queries

" === Backups === 

set backup writebackup        " Enable backups
set dir=~/.vim,/var/tmp       " Set swapfile directory
set backupdir=~/.vim,/var/tmp " Set backup directory
