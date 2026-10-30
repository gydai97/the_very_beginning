set cc=80
set nu rnu
set laststatus=2

set bg=dark
set t_Co=256
set cursorline
set termguicolors

set tabstop=4
set softtabstop=4

set shiftround
set shiftwidth=4

set nobackup
set noswapfile
set nowritebackup

set hlsearch
set incsearch
set showmatch
set cmdheight=2
set pumheight=10

call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()

autocmd BufWritePre * :%s/\s\+$//e

colorscheme gruvbox
