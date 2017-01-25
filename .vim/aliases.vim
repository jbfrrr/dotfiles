
" set leader to ;
let mapleader=","
let g:mapleader=","

nnoremap ; :

" quick alias to leave vim
nmap <leader>w :w<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>

" Easier moving in tabs and windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-K> <C-W>k<C-W>_
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-t> :tabnew<Space>
nnoremap <C-t> <Esc>:tabnew<Space>

" space toggles folds
nnoremap <space> za
