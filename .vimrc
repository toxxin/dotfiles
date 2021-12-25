set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The theme, first
" Plugin 'buztard/vim-marshmallow'
Plugin 'morhetz/gruvbox'

Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'rking/ag.vim'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/syntastic'

Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-fugitive'

Plugin 'itchyny/lightline.vim'

call vundle#end()

filetype plugin indent on     " Required!


set laststatus=2
syntax on

set background=dark

" ================ Indentation ======================

set list
set listchars=eol:¬,tab:\|\ 

set tabstop=4
set shiftwidth=4

" ================ Ctrlp ============================

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

" =============== Turn Off Swap Files ===============

set noswapfile
set nobackup
set nowb

" =============== ErrorBell =========================

set noerrorbells
set novisualbell

" =============== Lines numeration ==================

set number relativenumber


set ignorecase
set smartcase


" Theme enable
autocmd vimenter * ++nested colorscheme gruvbox

let g:gruvbox_contrast = 'dark'
