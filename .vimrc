set encoding=utf-8

set cc=80
set nu rnu
set laststatus=2

set bg=dark
set t_Co=256
set cursorline
set termguicolors

set mouse=a
set tabstop=4
set softtabstop=4

set shiftround
set shiftwidth=4

set hidden
set nowrap
set nobackup
set noswapfile
set nowritebackup

set hlsearch
set incsearch
set showmatch
set cmdheight=2
set pumheight=10
set updatetime=300
set signcolumn=number
set shortmess+=c

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ \[%{mode()}\]
set statusline+=\ %f
set statusline+=\ %m
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

autocmd BufWritePre * :%s/\s\+$//e

silent! colorscheme gruvbox
