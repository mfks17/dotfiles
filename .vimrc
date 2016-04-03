"   __  __ _ _____ _________
"   \ \ | |_|     V  __/  __|
"    \ \| | | | | | |  | [__
" [_] \___|_|_|_|_|_|  \____|


" Encoding {{{
set encoding=utf-8
scriptencoding utf-8
" }}}

let s:darwin = has('mac')

" }}}
" ============================================================================
" VIM-PLUG BLOCK {{{
" ============================================================================

silent! if plug#begin('~/.vim/plugged')

if s:darwin
  let g:plug_url_format = 'git@github.com:%s.git'
else
  let $GIT_SSL_NO_VERIFY = 'true'
endif


" Appearance
Plug 'vim-airline/vim-airline'
Plug 'cocopon/iceberg.vim'

" Browsing
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
augroup nerd_loader
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
        \  if isdirectory(expand('<amatch>'))
        \|   call plug#load('nerdtree')
        \|   execute 'autocmd! nerd_loader'
        \| endif
augroup END


call plug#end()
endif


" File Types {{{
augroup vimrc_filetype
        autocmd!
        autocmd BufNewFile,BufRead *.gradle   setlocal filetype=groovy
        autocmd BufNewFile,BufRead *.podspec  setlocal filetype=ruby
        autocmd BufNewFile,BufRead Podfile    setlocal filetype=ruby
        autocmd FileType           coffee     setlocal shiftwidth=2 tabstop=2 expandtab
        autocmd FileType           css        setlocal shiftwidth=4 tabstop=4
        autocmd FileType           gitcommit  setlocal nocursorline spell
        autocmd FileType           html       setlocal shiftwidth=2 tabstop=2 indentexpr&
        autocmd FileType           javascript setlocal shiftwidth=2 tabstop=2
        autocmd FileType           php        setlocal shiftwidth=2 tabstop=2
        autocmd FileType           python     setlocal shiftwidth=4 tabstop=4 expandtab
        autocmd FileType           ruby       setlocal shiftwidth=2 tabstop=2 expandtab
        autocmd FileType           text       setlocal textwidth=0
        autocmd FileType           vim        setlocal shiftwidth=2 tabstop=2 fdm=marker
        autocmd FileType           xml        setlocal shiftwidth=2 tabstop=2
        autocmd FileType           yaml       setlocal shiftwidth=2 tabstop=2
augroup END
" }}}


" Misc {{{
set completeopt=menu,menuone
set cursorline
set display=lastline
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
filetype plugin indent on

"Scroll
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
inoremap <C-k> <C-o>D
inoremap <C-n> <Down>
inoremap <C-p> <Up>

" Color Scheme {{{
syntax enable
let s:colorscheme = 'iceberg'
" }}}
