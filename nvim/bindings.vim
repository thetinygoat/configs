let mapleader=" "
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap B ^
nnoremap E $
vnoremap B ^
vnoremap E $
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
inoremap jk <esc>
nnoremap <leader>w :w<CR>
nnoremap ; :
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nnoremap <C-p> :Files<CR>