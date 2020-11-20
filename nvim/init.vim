call plug#begin(stdpath('data') . '/plugged')
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neovimhaskell/haskell-vim'
Plug 'scrooloose/nerdtree'
" Initialize plugin system
call plug#end()

"=> colors
syntax enable           " enable syntax processing

"=> tabs and spaces
set expandtab
set shiftwidth=2
set softtabstop=2

"=> ui config
set number              " show relative line numbers
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set so=10               " set scroll off
set clipboard=unnamedplus   " use system clipboard

"=> searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set ignorecase          " case insensitive search
set wildignorecase      " case insensitive tab completion

"=> movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

"=> leader shortcuts
let mapleader=","       " leader is comma
" jk is escape
inoremap jk <esc>
" fast saving
nmap <leader>w :w<CR>
" map colon to semcolon
nmap ; :
nmap <leader>sc :source ~/.config/nvim/init.vim<CR>
nmap <leader>sz :source ~/.zshrc<CR>
nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>

"=> backups
set nobackup
set nowb
set noswapfile

"=> buffer and splits
set hidden      " allow buffers to be hidden
" sane split defaults
set splitright
set splitbelow
" use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
"=> plugin settings

"=> colorscheme
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox

"=> fzf
map <leader>ff :Files<CR>

"=> nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
