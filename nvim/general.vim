set guicursor=
set relativenumber
set number
set nohlsearch
set incsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set termguicolors
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set updatetime=50
set shortmess+=c
set clipboard+=unnamedplus
set lazyredraw
set splitright
set splitbelow
colorscheme gruvbox
highlight Normal guibg=none

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THETINYGOAT
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END