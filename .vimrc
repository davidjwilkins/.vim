set nocompatible

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on



execute pathogen#infect()
set omnifunc=syntaxcomplete#Complete
set noeol
color jellybeans
scriptencoding utf-8 nobomb
set encoding=utf-8 nobomb
set backspace=indent,eol,start
set spell showmatch incsearch hlsearch ignorecase smartcase wildmenu
set wildmode=list:longest,full
set history=1000 scrolljump=5
set virtualedit=onemore
set number cursorline visualbell autoread
set noswapfile nobackup nowb
set autoindent smartindent smarttab expandtab
set shiftwidth=4 softtabstop=4 tabstop=4 
set scrolloff=8
if has('persistent_undo')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif
filetype plugin on
filetype indent on
"display tabs and trailing spaces
set list listchars=tab:\ \ ,trail:·
nnoremap ; :
nnoremap j gj
nnoremap k gk
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h
set linebreak    "Wrap lines at convenient points
set foldmethod=indent foldnestmax=3 nofoldenable
syntax on
filetype plugin indent on
let mapleader="/"
cmap fs NERDTree 
cmap w!! w !sudo tee % >/dev/null
autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd FileType go compiler go

