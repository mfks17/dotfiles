"   __  __ _ _____ _________
"   \ \ | |_|     V  __/  __|
"    \ \| | | | | | |  | [__
" [_] \___|_|_|_|_|_|  \____|


" Execute the following command to bring the full power:
"
"   :call VimrcSetUp()


" Encoding {{{
set encoding=utf-8
scriptencoding utf-8
" }}}


" Misc {{{
set completeopt=menu,menuone
set grepprg=grep\ -nH
set laststatus=2
set nrformats-=octal
set number
set numberwidth=5
set shortmess=aTI
set virtualedit=block

" Backup
set nobackup
set noswapfile

" Indent
set autoindent
set list
set listchars=eol:¬,tab:▸\ 
set noexpandtab
set nosmartindent
set shiftround
set shiftwidth=4
set tabstop=4

" Scroll
set scrolloff=8
set sidescroll=1
set sidescrolloff=16

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

" Cursor
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
" }}}

" Emacs-like keybind

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-h> <Backspace>
cnoremap <C-k> <C-\>e getcmdpos() == 1 ? '' : getcmdline()[:getcmdpos()-2]<CR>
inoremap <C-a> <Home>
inoremap <C-b> <Left>
inoremap <C-d> <Del>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-h> <Backspace>
inoremap <C-k> <C-o>
inoremap <C-n> <Down>
inoremap <C-p> <Up>

" Color Scheme {{{
syntax enable
" }}}
