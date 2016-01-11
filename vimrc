call plug#begin("~/.vim/bundle")
" Plugin List
" Plug 'rking/ag.vim'
" Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'
" Plug 'Valloric/MatchTagAlways'
" Plug 'Valloric/YouCompleteMe', {'do': 'CXX=clang++ CC=clang ./install.sh --clang-completer --system-libclang --system-boost'}
"  Plug 'jlanzarotta/bufexplorer'
Plug 'bigeagle/molokai'
Plug 'gosukiwi/vim-atom-dark'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
"  Plug 'scrooloose/syntastic'
"
"  Plug 'terryma/vim-multiple-cursors'
"  Plug 'easymotion/vim-easymotion'
"  Plug 'majutsushi/tagbar'
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"  Plug 'embear/vim-localvimrc'
"  Plug 'jrosiek/vim-mark'
"  Plug 'mbbill/undotree'
"  Plug 'kien/rainbow_parentheses.vim'
"
"  Plug 'mattn/emmet-vim'
Plug 'hdima/python-syntax'
"  Plug 'hynek/vim-python-pep8-indent'
Plug 'fatih/vim-go'
Plug 'lervag/vim-latex'
"  Plug 'kchmck/vim-coffee-script'
"  Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
"  Plug 'tpope/vim-fugitive'
"  Plug 'sudar/vim-arduino-syntax'
Plug 'zaiste/tmux.vim'
"  Plug 'lepture/vim-jinja'
"  Plug 'cespare/vim-toml'
"  Plug 'mxw/vim-jsx'
"  Plug 'isRuslan/vim-es6'
"  Plug 'bigeagle/sieve.vim'
"
"  Plug 'caio/querycommandcomplete.vim'
"  Plug 'justinmk/vim-gtfo'
"
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug '~/.nvim/bundle/colorpicker'
Plug 'lukerandall/haskellmode-vim'
Plug 'kana/vim-filetype-haskell'
call plug#end()


if !exists("g:vimrc_loaded")
    " ??????? molokai
    colorscheme atom-dark-256
    let g:molokai_original = 1
    if has("gui_running")
	    " ?? gvim ???
        set auioptions-=T "?????
        set guioptions-=L
        set guioptions-=r
        set guioptions-=m
        set gfn=Source\ Code\ Pro\ for\ Powerline\ Semi-Bold\ 10
        set gfw=STHeiti\ 9
        set langmenu=en_US
        set linespace=0
    endif " has
endif " exists(...)

set so=10           " ????????10??????
set number          " ????
syntax on           " ??????
filetype on         " ????????
filetype plugin on  " ??????????
filetype indent on  " ??????????

set list lcs=tab:\?\   " ?? ? ??? tab ??

if has("autocmd")   " ???????????????
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif

set completeopt=longest,menu " ??????

" ????
if has('mouse')
    set mouse=a
    set selectmode=mouse,key
    set nomousehide
endif

set autoindent    " ????
set modeline      " ??????
set cursorline    " ???????
set cursorcolumn  " ???????

" ??????? 4 ???
set shiftwidth=4 
set tabstop=4
set softtabstop=4

set showmatch     " ??????
set matchtime=0
set nobackup      " ????
set nowritebackup
" set directory=~/.vim/.swapfiles//  " ? swap ????? ~/.vim/.swapfiles/ ?

" neovim ? tmux ??????
if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif

"?insert????????????
set backspace=indent,eol,start

" ????
set fenc=utf-8
set fencs=utf-8,gbk,gb18030,gb2312,cp936,usc-bom,euc-jp
set enc=utf-8

"????
set foldmethod=syntax
set foldcolumn=0  " ?????????
set foldlevel=100
" ?????????
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

set smartcase   " ???,?????
set ignorecase  " ???,?????
set nohlsearch  " ??????
set incsearch   " incremental search 
set autochdir   " ?????,?? cd ???????

" ? j, k ??? ??wrap???????
vmap j gj
vmap k gk
nmap j gj
nmap k gk

" Shift-T ?? Tab
nmap T :tabnew<cr>

" ??????,? {<??> ?,??????? }
au FileType c,cpp,h,java,css,js,nginx,scala,go inoremap  <buffer>  {<CR> {<CR>}<Esc>O
" custom settings
set wrap
source ~/.vim/config/airline.vim
