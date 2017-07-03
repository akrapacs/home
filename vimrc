set nocompatible              " be iMproved, required

" -------VUNDLE START--------
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'wincent/command-t'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
Plugin 'tomtom/tcomment_vim'
Plugin 'solarnz/thrift.vim'
Plugin 'bumaociyuan/vim-swift'

call vundle#end()            " required
filetype plugin indent on    " required
" -------VUNDLE END--------

" Editor Configuration
set number          " turn on line numbers
syntax on           " turn on syntax highlighting
set tabstop=4       " set tab width to 4
set shiftwidth=4    " set indent width to 4
set softtabstop=4   " set the columns for a tab
set expandtab       " expand tabs to spaces
set cursorline
set incsearch

" set nowrap
set ruler
set showcmd
set autoindent
set smartindent
set hlsearch
set showtabline=1
set title

" Key Mappings
let mapleader = ","
nnoremap <silent> <leader>t :CommandT<CR>
nnoremap <leader>b :bu 
nnoremap <silent> <leader>w :w<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <leader>f :NERDTreeFocus<CR>

" Ignores
set wildignore+=*.meta
set wildignore+=*.class
set wildignore+=*.pyc
let NERDTreeIgnore = ['\.meta$']

" Colors
colorscheme molokai

" Clipboard
if has("clipboard")
    if has("macunix")
        set clipboard=unnamed
    elseif has("unix")
        set clipboard=unnamedplus
    endif
endif

