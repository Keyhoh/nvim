let g:python3_host_prog='/usr/bin/python3'
set encoding=utf-8

if isdirectory('.nvim') && filereadable('.nvim/beforeInit.vim')
    source .nvim/beforeInit.vim
endif

source ~/.config/nvim/dpp/init.vim
source ~/.config/nvim/ddu/init.vim
source ~/.config/nvim/ddc/init.vim
source ~/.config/nvim/ddt/init.vim
source ~/.config/nvim/config.vim
source ~/.config/nvim/keymap.vim

if isdirectory('.nvim') && filereadable('.nvim/init.vim')
    source .nvim/afterInit.vim
endif

