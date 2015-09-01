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

" ================ Ctrlp ============================

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set visualbell
set mouse=v
set gcr=a:blinkon0
set autoread
set noswapfile

" ================ OverLength =======================

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" ================= ErrorBell =======================

set noerrorbells
