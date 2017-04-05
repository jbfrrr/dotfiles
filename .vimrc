" Owner: Joe Ferrer

source ~/.vim/plugins.vim
source ~/.vim/aliases.vim

"--GENERAL--

" Turn-off backwards compatibility
set nocompatible
set backspace=indent,eol,start
set encoding=utf8
set ffs=unix,dos,mac

" Shell compatibility
set shell=bash\ -i

" Set to auto read when a file is changed from the outside
set autoread

" Always show at least 3 lines above/below the cursor
set scrolloff=3
" Always show at least 5 characters when scrolling horizontally
set sidescrolloff=5

" Folding
" newly opened files are not yet folded
set nofoldenable
" default to folding based on indentation
set foldmethod=indent
set foldnestmax=10

"--RESOURCES--

" Remember 1K lines of history
set history=1000

" Use all the memory needed for maximum performance
set maxmemtot=2000000
set maxmem=2000000
set maxmempattern=2000000

"--VIM UI--

" Turn on the wild menu
set wildmenu
" Ignore compiled files
set wildignore+=.svn,CVS,.git
set wildignore+=*.o,*.a,*.class,*.mo,*.so,*.lo,*.la,*.obj,*.pyc
set wildignore+=*.exe,*.zip,*.jpg,*.png,*.gif,*.jpeg
set wildmode=longest,list,full

" A buffer becomes hidden when it is abandoned
set hid
" Make left-right arrow keys, 'h','l' move to next line
set whichwrap+=<,>,h,l
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
"Do not redraw while executing macros (for performance)
set lazyredraw

" For regular expressions turn magic on
set magic

" Colors
syntax enable
set t_Co=256
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

" Spaces/Tabs
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
filetype indent on
set autoindent
set smartindent
" turn off typescript indent
let g:typescript_indent_disable = 1

" Wrap lines
set wrap

" UI Layout
set number
set showcmd
" Always show current position (ruler)
set ruler
set showmatch
set cursorline
hi CursorLine term=underline cterm=underline ctermbg=none
" Height of the command bar
set cmdheight=1


"--FILES/BACKUPS/UNDO--
set nobackup
set nowb
set noswapfile

"--NERDTree
nnoremap <silent> <F3> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
" show hidden files in NERDTree
let NERDTreeShowHidden=1

"--Airline
set laststatus=2
let g:airline_theme='bubblegum'
let g:airline#extensions#whitespace#enabled = 1

let g:airline#extensions#tabline#enabled = 1

" show tab number
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_buffers=0

let g:airline#extensions#branch#enabled = 0
let g:airline_powerline_fonts=1


"--Multicursor
let g:multi_cursor_use_default_mapping=1

"--Ack-Grep/The Silver Searcher
if executable('ag')
    " Use ag over grep
   " set grepprg=ag\ --nogroup\ --nocolor
    let g:ackprg='ag --nogroup --nocolor --column'

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"--TMUX
if &term =~ '^screen'
    " tmux will send xterm-style keys when xterm-keys is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

"--Markdown Preview
filetype plugin on
