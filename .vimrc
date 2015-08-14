execute pathogen#infect()
filetype plugin indent on
set laststatus=2

set t_Co=256
let g:solarized_termcolor=256
set background=dark
colorscheme solarized

" ================ Indentation ======================

set list
set listchars=eol:¬,tab:\|\ 

filetype plugin indent on
set tabstop=4
set shiftwidth=4
"set expandtab

" ================ Search ===========================

set incsearch
set hlsearch
set ignorecase
set smartcase

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set visualbell
set mouse=a
set gcr=a:blinkon0
set autoread
set noswapfile

" ================ OverLength =======================

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" ================= ErrorBell =======================

set noerrorbells
