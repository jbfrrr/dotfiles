set nocompatible

" Plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim " Initialize Vundle runtime path
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-sleuth'
Plugin 'leafgarland/typescript-vim'
"Plugin 'suan/vim-instant-markdown'
Plugin 'shime/vim-livedown'

call vundle#end()
filetype plugin indent on


