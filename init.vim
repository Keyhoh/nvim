let g:python3_host_prog='/usr/bin/python3'
set encoding=utf-8

if &compatible
  set nocompatible         " Be iMproved
endif

" Required:
set runtimepath+=/home/keyhoh/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/keyhoh/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/keyhoh/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins
call dein#add('joshdick/onedark.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-theme')
call dein#add('vim-denops/denops.vim')
call dein#add('github/copilot.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-repeat')
call dein#add('scrooloose/nerdtree')
call dein#add('junegunn/fzf.vim')
call dein#add('junegunn/fzf')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Plugin settings
" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" User settings
set guifont=HackGen_Nerd
set splitbelow
set splitright

colorscheme onedark

let mapleader=' '

set number

set expandtab
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase

set mouse=
set guioptions=

set clipboard+=unnamedplus

nnoremap <S-y> y$
inoremap jj <Esc>
nnoremap gb :<C-u>exe v:count."bnext"<CR>
nnoremap g<S-b> :<C-u>exe v:count."bprevious"<CR>
